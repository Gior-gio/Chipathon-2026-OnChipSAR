v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {ipin.sym} 80 -180 0 0 {name=p1 lab=rst}
C {ipin.sym} 80 -240 0 0 {name=p2 lab=clk}
C {opin.sym} 60 -210 0 0 {name=p3 lab=q[3:0]}
C {iopin.sym} 60 -280 0 0 {name=p4 lab=VDD}
C {iopin.sym} 60 -260 0 0 {name=p7 lab=VSS}
C {devices/code_shown.sym} 150 -240 0 0 {name=SPICE 
format="@value"
value="
.include /foss/pdks/gf180mcuD/libs.ref/gf180mcu_fd_sc_mcu9t5v0/spice/gf180mcu_fd_sc_mcu9t5v0.spice
.include /foss/designs/Chipathon-2026-OnChipSAR/designs/sar_adc/digital/digital_flow/runs/RUN_2026-07-09_18-40-01/final/spice/counter.spice
"}
