# 1. Definimos la realidad del reloj: 60 MHz (16.66 ns) con flanco de bajada al 50% (8.33 ns)
create_clock [get_ports CLK] -name CLK -period 16.66 -waveform {0 8.33}

# ==============================================================================
# ENTRADAS
# ==============================================================================
# Vcomp: La señal se lanza en la bajada (tarda max 1.0 ns).
set_input_delay -max 1.0 -clock [get_clocks CLK] -clock_fall [get_ports Vcomp]

# Vcomp: La señal se corrompe en la subida (obligamos a la herramienta a proteger el Hold)
set_input_delay -min 0.0 -clock [get_clocks CLK] [get_ports Vcomp]

# SAMP: Señal de muestreo externa (Asumimos márgenes genéricos seguros)
set_input_delay -max 0.5 -clock [get_clocks CLK] [get_ports SAMP]
set_input_delay -min 0.0 -clock [get_clocks CLK] [get_ports SAMP]

# ==============================================================================
# SALIDAS (Hacia el DAC Capacitivo)
# ==============================================================================
# SETUP: Los FFs escupen en la subida (0.0 ns). El DAC necesita asentarse.
# REEMPLAZA EL 3.0 por el tiempo máximo que tarde tu DAC analógico en estabilizarse.
set_output_delay -max 3.0 -clock [get_clocks CLK] -clock_fall [all_outputs]

# HOLD: El DAC no impone restricción de Hold a la lógica digital porque no tiene reloj interno.
# Ponemos -1.0 ns para que la herramienta no gaste área insertando delays innecesarios.
set_output_delay -min -1.0 -clock [get_clocks CLK] -clock_fall [all_outputs]

# ==============================================================================
# REGLAS ELÉCTRICAS
# ==============================================================================
# Prohibir ondas "redondeadas" para evitar que los transistores a 3.3V gasten potencia por cortocircuito
set_max_transition 1.5 [current_design]