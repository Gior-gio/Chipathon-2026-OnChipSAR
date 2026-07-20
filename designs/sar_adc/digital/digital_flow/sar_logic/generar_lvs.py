import os

# --- CONFIGURACIÓN DINÁMICA ---
# 1. Obtener el nombre del proyecto dinámicamente (nombre de la carpeta actual)
NOMBRE_PROYECTO = os.path.basename(os.getcwd())

# 2. Ruta del PDK en la carpeta superior
# Esto resuelve automáticamente la ruta absoluta al directorio padre
ARCHIVO_PDK = os.path.abspath(os.path.join(os.getcwd(), '..', 'gf180mcu_fd_sc_mcu7t5v0.spice'))

# 3. Nombres de archivos basados en la carpeta
ARCHIVO_ORIGINAL = f"{NOMBRE_PROYECTO}.spice"
ARCHIVO_BACKUP = f"{NOMBRE_PROYECTO}_old.spice"
ARCHIVO_SALIDA = f"{NOMBRE_PROYECTO}.spice"

def aplicar_parche_definiciones():
    print(f"[*] Iniciando procesamiento universal para el módulo: '{NOMBRE_PROYECTO}'")
    print(f"[*] Buscando PDK en: {ARCHIVO_PDK}")
    
    # --- 0. Gestión del Backup ---
    if not os.path.exists(ARCHIVO_BACKUP):
        if os.path.exists(ARCHIVO_ORIGINAL):
            print(f"[*] Creando backup: Renombrando '{ARCHIVO_ORIGINAL}' a '{ARCHIVO_BACKUP}'")
            os.rename(ARCHIVO_ORIGINAL, ARCHIVO_BACKUP)
        else:
            print(f"ERROR: No se encontró ni '{ARCHIVO_ORIGINAL}' ni '{ARCHIVO_BACKUP}'.")
            print("Asegúrate de ejecutar el script dentro de la carpeta del diseño.")
            return

    # --- 1. Leer diseño digital (manteniendo los nodos originales) ---
    with open(ARCHIVO_BACKUP, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    instancias_limpias = []
    celdas_usadas = set()
    contador = 1
    in_subckt_top = False

    for line in lines:
        ls = line.strip()
        if not ls: continue
        
        # Buscamos el inicio del subcircuito dinámicamente (.subckt sar_logic, .subckt counter, etc.)
        if ls.lower().startswith(f".subckt {NOMBRE_PROYECTO.lower()}"):
            instancias_limpias.append(line + "\n") # Mantenemos la línea exacta con sus pines originales
            in_subckt_top = True
            continue
        
        if in_subckt_top:
            if ls.lower().startswith('.ends'):
                in_subckt_top = False
                continue
            
            # Formatear instancia a X1, X2... dejando sus nodos intactos
            if "gf180mcu_fd_sc_mcu7t5v0__" in ls.lower():
                tokens = ls.split()
                nombre_celda = tokens[-1].upper()
                nodos = " ".join(tokens[1:-1])
                
                instancias_limpias.append(f"X{contador} {nodos} {nombre_celda}\n")
                celdas_usadas.add(nombre_celda)
                contador += 1

    # --- 2. Extraer definiciones del PDK y aplicar el parche ---
    definiciones = []
    try:
        with open(ARCHIVO_PDK, 'r', encoding='utf-8') as f:
            pdk_lines = f.readlines()
    except FileNotFoundError:
        print(f"ERROR CRÍTICO: No se encontró el archivo PDK en la ruta:\n{ARCHIVO_PDK}")
        print("Asegúrate de que haya una copia de 'gf180mcu_fd_sc_mcu7t5v0.spice' en la carpeta superior.")
        return

    guardar = False
    for line in pdk_lines:
        ls = line.strip()
        
        if ls.lower().startswith('.subckt '):
            tokens = ls.split()
            nombre = tokens[1].upper()
            guardar = (nombre in celdas_usadas)
            
            if guardar:
                # --- EL PARCHE PARA ENDCAP Y FILLTIE ---
                if "ENDCAP" in nombre or "FILLTIE" in nombre:
                    # Quitamos VNW y VPW de la línea original
                    line_modificada = line.replace('VNW', '').replace('VPW', '')
                    # Limpiamos dobles espacios
                    line_modificada = " ".join(line_modificada.split()) + "\n"
                    definiciones.append(line_modificada)
                else:
                    definiciones.append(line)
            continue
            
        if guardar:
            definiciones.append(line)
            if ls.lower().startswith('.ends'):
                guardar = False

    # --- 3. Ensamblar y guardar ---
    with open(ARCHIVO_SALIDA, 'w', encoding='utf-8') as f:
        f.write(f"* ==========================================\n")
        f.write(f"* LVS READY - MÓDULO: {NOMBRE_PROYECTO.upper()}\n")
        f.write(f"* ==========================================\n\n")
        f.writelines(definiciones)
        f.write("\n\n* --- DISEÑO DIGITAL ---\n")
        f.writelines(instancias_limpias)
        f.write(f".ends {NOMBRE_PROYECTO}\n")

    print(f"¡Éxito! Archivo '{ARCHIVO_SALIDA}' generado y parcheado correctamente.")

if __name__ == "__main__":
    aplicar_parche_definiciones()