# =============================================================================
# SPICE Netlist Preparation for LVS
#
# Original author: Ramón Sarmiento
# Revised by: Jorge Angarita Pérez
#
# Description:
#   Automatically retrieves the project SPICE netlist and GDS layout from the
#   latest LibreLane run if they are not present in the working directory.
#   Extracts the standard-cell definitions used by the design from the GF180MCU
#   PDK, applies specific ENDCAP and FILLTIE pin-definition patches, and
#   generates an LVS-ready SPICE netlist.
#
# Usage:
#   1. Place this script inside the project directory.
#   2. Make sure the GF180MCU PDK SPICE file is located in the parent directory.
#   3. Ensure the LibreLane runs/ directory is available if the SPICE or GDS
#      files need to be recovered.
#   4. Run the script from the project directory using:
#
#          python3 <script_name>.py
#
#   The script automatically identifies the project from the current directory
#   name. The processed SPICE netlist is saved in the same directory.
#
# Version: Revised version
# =============================================================================

import os
import shutil

# --- DYNAMIC CONFIGURATION ---

# 1. Dynamically obtain the project name from the current directory
PROJECT_NAME = os.path.basename(os.getcwd())

# 2. PDK path in the parent directory
PDK_FILE = os.path.abspath(
    os.path.join(os.getcwd(), '..', 'gf180mcu_fd_sc_mcu7t5v0.spice')
)

# 3. File names based on the project directory
ORIGINAL_SPICE = f"{PROJECT_NAME}.spice"
BACKUP_SPICE = f"{PROJECT_NAME}_old.spice"
OUTPUT_SPICE = f"{PROJECT_NAME}.spice"
PROJECT_GDS = f"{PROJECT_NAME}.gds"


# --- RUN DIRECTORY MANAGEMENT ---

def get_latest_run():

    runs_directory = os.path.join(os.getcwd(), 'runs')

    if not os.path.isdir(runs_directory):
        return None

    run_directories = [
        os.path.join(runs_directory, directory)
        for directory in os.listdir(runs_directory)
        if directory.startswith('RUN_')
        and os.path.isdir(os.path.join(runs_directory, directory))
    ]

    if not run_directories:
        return None

    # Select the most recently created run directory.
    # On systems without st_birthtime, st_ctime is used as a fallback.
    return max(
        run_directories,
        key=lambda directory: getattr(
            os.stat(directory),
            'st_birthtime',
            os.stat(directory).st_ctime
        )
    )


# --- AUTOMATIC FILE RECOVERY ---

def recover_file(filename, subdirectory, latest_run):

    # Check whether the file already exists in the working directory
    if os.path.isfile(filename):
        print(f"[*] Found local file: {filename}")
        return True, False

    print(f"[*] '{filename}' not found in the working directory.")
    print(f"[*] Searching in runs/RUN_*/final/{subdirectory}/...")

    if latest_run is None:
        print(f"WARNING: No RUN_* directory was found for '{filename}'.")
        return False, False

    # Expected file location inside the latest run
    source_file = os.path.join(
        latest_run,
        'final',
        subdirectory,
        filename
    )

    if os.path.isfile(source_file):

        # Copy the recovered file into the working directory
        shutil.copy2(source_file, filename)

        print(f"[*] Recovered '{filename}' from:")
        print(f"    {source_file}")

        return True, True

    else:
        print(f"WARNING: Could not find '{filename}'.")
        print(f"[*] Expected location: {source_file}")

        return False, False


# --- MAIN PROCESSING FUNCTION ---

def apply_definition_patch():

    print(f"[*] Starting processing for module: '{PROJECT_NAME}'")
    print(f"[*] Looking for PDK at: {PDK_FILE}")

    # --- 0. Recover SPICE and GDS Files ---

    latest_run = get_latest_run()

    if latest_run:
        print(f"[*] Latest run: {os.path.basename(latest_run)}")
    else:
        print("[*] No RUN_* directories available.")

    # Recover SPICE netlist
    spice_found, spice_recovered = recover_file(
        ORIGINAL_SPICE,
        'spice',
        latest_run
    )

    # Recover GDS layout
    gds_found, gds_recovered = recover_file(
        PROJECT_GDS,
        'gds',
        latest_run
    )

    # Stop processing if the SPICE netlist is unavailable
    if not spice_found:
        print("ERROR: SPICE netlist is required. Processing aborted.")
        return

    if not gds_found:
        print("WARNING: GDS file is unavailable. Continuing with SPICE only.")

    # --- 1. Backup Management ---

    if spice_recovered:

        # Update the backup with the newly recovered netlist
        shutil.copy2(ORIGINAL_SPICE, BACKUP_SPICE)
        print(f"[*] Backup updated: {BACKUP_SPICE}")

    elif not os.path.exists(BACKUP_SPICE):

        # Create the initial backup
        print(f"[*] Creating backup: {ORIGINAL_SPICE} -> {BACKUP_SPICE}")
        os.rename(ORIGINAL_SPICE, BACKUP_SPICE)

    # --- 2. Read Digital Design (Preserving Original Nodes) ---

    with open(BACKUP_SPICE, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    cleaned_instances = []
    used_cells = set()
    instance_counter = 1
    in_top_subckt = False

    for line in lines:

        stripped_line = line.strip()

        if not stripped_line:
            continue

        # Find the top-level subcircuit dynamically
        if stripped_line.lower().startswith(
            f".subckt {PROJECT_NAME.lower()}"
        ):

            # Preserve the original subcircuit declaration
            cleaned_instances.append(line)
            in_top_subckt = True
            continue

        if in_top_subckt:

            if stripped_line.lower().startswith('.ends'):
                in_top_subckt = False
                continue

            # Preserve port continuation lines
            if stripped_line.startswith('+'):
                cleaned_instances.append(line)
                continue

            # Rename standard-cell instances to X1, X2, ...
            if "gf180mcu_fd_sc_mcu7t5v0__" in stripped_line.lower():

                tokens = stripped_line.split()
                cell_name = tokens[-1].upper()
                nodes = " ".join(tokens[1:-1])

                cleaned_instances.append(
                    f"X{instance_counter} {nodes} {cell_name}\n"
                )

                used_cells.add(cell_name)
                instance_counter += 1

    # --- 3. Extract PDK Definitions and Apply Patches ---

    definitions = []

    try:

        with open(PDK_FILE, 'r', encoding='utf-8') as file:
            pdk_lines = file.readlines()

    except FileNotFoundError:

        print(f"CRITICAL ERROR: PDK file not found at:\n{PDK_FILE}")
        print(
            "Make sure a copy of 'gf180mcu_fd_sc_mcu7t5v0.spice' "
            "exists in the parent directory."
        )
        return

    save_definition = False

    for line in pdk_lines:

        stripped_line = line.strip()

        if stripped_line.lower().startswith('.subckt '):

            tokens = stripped_line.split()
            cell_name = tokens[1].upper()

            save_definition = cell_name in used_cells

            if save_definition:

                # Patch ENDCAP and FILLTIE cell definitions
                if "ENDCAP" in cell_name or "FILLTIE" in cell_name:

                    # Remove VNW and VPW from the subcircuit declaration
                    modified_line = (
                        line.replace('VNW', '').replace('VPW', '')
                    )

                    # Normalize whitespace
                    modified_line = " ".join(
                        modified_line.split()
                    ) + "\n"

                    definitions.append(modified_line)

                else:
                    definitions.append(line)

            continue

        if save_definition:

            definitions.append(line)

            if stripped_line.lower().startswith('.ends'):
                save_definition = False

    # --- 4. Assemble and Save Final Netlist ---

    with open(OUTPUT_SPICE, 'w', encoding='utf-8') as file:

        file.write("* ==========================================\n")
        file.write(
            f"* LVS READY - MODULE: {PROJECT_NAME.upper()}\n"
        )
        file.write("* ==========================================\n\n")

        file.writelines(definitions)

        file.write("\n\n* --- DIGITAL DESIGN ---\n")
        file.writelines(cleaned_instances)

        file.write(f".ends {PROJECT_NAME}\n")

    print(f"[*] SPICE file generated: {OUTPUT_SPICE}")

    if gds_found:
        print(f"[*] GDS file available: {PROJECT_GDS}")

    print("[*] Processing completed.")


if __name__ == "__main__":
    apply_definition_patch()
