# --- Script Tcl para automatizar Magic VLSI ---

# 1. Leer GDS y cargar celda principal
gds read gate_buf_output.gds
load gate_buf_output

# 2. Seleccionar celda superior y expandir jerarquía
select top cell
expand

# 3. Extraer parásitos (capacitancias y resistencias)
extract all
extresist all

# 4. Generar netlist SPICE post-layout
ext2spice hierarchy on
ext2spice scale off
ext2spice cthresh 0
ext2spice extresist on
ext2spice

# 5. Guardar layout en formato .mag
save

# 6. Cerrar sesión
quit -noprompt
