# SAR ADC Design Organization

The SAR ADC design is divided into four main blocks and the top integration:

```text
sar_adc/
├── samplehold/
├── comparator/
├── digital/
├── dac/
└── top/
```

Each block may contain one or more circuit directories.

## Circuit Structure

Each circuit should be placed in its own directory named after the circuit itself.

The recommended structure is:

```text
<circuit_name>/
├── xschem/
├── gds/
└── cace/
```

### xschem

The `xschem` directory contains the source design files and is required for every circuit.

The main schematic and symbol files must have the same name as the circuit directory:

```text
<circuit_name>/
└── xschem/
    ├── <circuit_name>.sch
    ├── <circuit_name>.sym
    └── ...
```

Any testbenches associated with the circuit should also be stored in this directory.

### gds

The `gds` directory contains layout-related files and generated GDS data.

```text
<circuit_name>/
└── gds/
    ├── <circuit_name>.gds
    └── ...
```

This directory may be omitted until layout development begins.

### cace

The `cace` directory is optional and contains the files required to run automated verification and characterization flows using CACE.

Typical uses include:

* Process-Voltage-Temperature (PVT) analysis
* Monte Carlo (MC) simulations
* DRC with Magic and Klayout
* LVS with Netgent
* Parasitic Extraction (PEX) with Magic

The directory should contain:

```text
<circuit_name>/
└── cace/
    ├── scripts/
    ├── templates/
    └── <circuit_name>.yaml
```

The YAML file must have the same name as the circuit directory and serves as the main CACE project configuration.

Most circuits will not require a CACE setup. The directory should only be created when automated verification or characterization is needed.

When executed, CACE generates additional directories at the circuit level, alongside `xschem`, `gds`, and `cace`:

```text
<circuit_name>/
├── xschem/
├── gds/
├── cace/
├── netlist/
├── docs/
└── runs/
```

These directories contain generated outputs from the verification flow.

The repository Git configuration ignores the generated `docs/` and `runs/` directories. The `netlist/` directory is intentionally tracked because it contains generated SPICE netlists that may be useful for review, debugging, verification, and reproducibility purposes.
