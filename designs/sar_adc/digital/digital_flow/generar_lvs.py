import os

# --- ARCHIVOS ---
ARCHIVO_DIGITAL = "counter_old.spice"
ARCHIVO_PDK = "gf180mcu_fd_sc_mcu7t5v0.spice"
ARCHIVO_SALIDA = "counter.spice"
ORDEN_PINES = "VDD VSS clk q[0] q[1] q[2] q[3] rst"

def aplicar_parche_definiciones():
    print("Iniciando: Leyendo instancias y aplicando parche a ENDCAP/FILLTIE...")
    
    # 1. Leer diseño digital (manteniendo los nodos originales)
    with open(ARCHIVO_DIGITAL, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    instancias_limpias = []
    celdas_usadas = set()
    contador = 1
    in_subckt_counter = False

    for line in lines:
        ls = line.strip()
        if not ls: continue
        
        if ".subckt counter" in ls.lower():
            instancias_limpias.append(f".subckt counter {ORDEN_PINES}\n")
            in_subckt_counter = True
            continue
        
        if in_subckt_counter:
            if ls.lower().startswith('.ends'):
                in_subckt_counter = False
                continue
            
            # Formatear instancia a X1, X2... dejando sus nodos intactos
            if "gf180mcu_fd_sc_mcu7t5v0__" in ls.lower():
                tokens = ls.split()
                nombre_celda = tokens[-1].upper()
                nodos = " ".join(tokens[1:-1])
                
                instancias_limpias.append(f"X{contador} {nodos} {nombre_celda}\n")
                celdas_usadas.add(nombre_celda)
                contador += 1

    # 2. Extraer definiciones del PDK y aplicar el parche
    definiciones = []
    with open(ARCHIVO_PDK, 'r', encoding='utf-8') as f:
        pdk_lines = f.readlines()

    guardar = False
    for line in pdk_lines:
        ls = line.strip()
        
        if ls.lower().startswith('.subckt '):
            tokens = ls.split()
            nombre = tokens[1].upper()
            guardar = (nombre in celdas_usadas)
            
            if guardar:
                # --- EL PARCHE SOLICITADO ---
                if "ENDCAP" in nombre or "FILLTIE" in nombre:
                    # Quitamos VNW y VPW de la línea original
                    line_modificada = line.replace('VNW', '').replace('VPW', '')
                    # Limpiamos dobles espacios que puedan quedar
                    line_modificada = " ".join(line_modificada.split()) + "\n"
                    definiciones.append(line_modificada)
                else:
                    definiciones.append(line)
            continue
            
        if guardar:
            definiciones.append(line)
            if ls.lower().startswith('.ends'):
                guardar = False

    # 3. Ensamblar y guardar
    with open(ARCHIVO_SALIDA, 'w', encoding='utf-8') as f:
        f.write("* LVS READY - DEFINICIONES PARCHEADAS PARA ENDCAP Y FILLTIE\n\n")
        f.writelines(definiciones)
        f.write("\n\n* --- DISEÑO DIGITAL ---\n")
        f.writelines(instancias_limpias)
        f.write(".ends counter\n")

    print(f"¡Listo! Se guardó '{ARCHIVO_SALIDA}' con el parche aplicado.")

if __name__ == "__main__":
    aplicar_parche_definiciones()