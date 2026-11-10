# Clock: 60 MHz
create_clock [get_ports CLK] -name CLK -period 16.667 -waveform {0 8.333}

# Vcomp: StrongARM comparator output
# Reset delay after falling edge of CLK:
# FF ~0.50 ns, SS ~0.75 ns
set_input_delay -max 0.75 -clock [get_clocks CLK] -clock_fall [get_ports Vcomp]
set_input_delay -min 0.50 -clock [get_clocks CLK] -clock_fall [get_ports Vcomp]

# SAMP: External sampling control
set_input_delay -max 0.5 -clock [get_clocks CLK] [get_ports SAMP]
set_input_delay -min 0.0 -clock [get_clocks CLK] [get_ports SAMP]

# DAC control outputs
# Only SW0 and SW1 drive the DAC
# 3 ns reserved before the falling edge of CLK
set_output_delay -max 3.0 -clock [get_clocks CLK] -clock_fall [get_ports {SW0p[*] SW1p[*] SW0n[*] SW1n[*]}]

# Electrical constraints
set_max_transition 1.3 [current_design]