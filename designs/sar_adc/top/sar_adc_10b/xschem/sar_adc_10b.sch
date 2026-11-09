v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 -360 180 -320 {lab=VRP}
N 180 -120 180 -80 {lab=VRN}
N 540 -220 600 -220 {lab=SAMP}
N 540 -240 600 -240 {lab=CLK}
N 700 -380 700 -320 {lab=VDD}
N 700 -120 700 -60 {lab=VSS}
N 800 -280 900 -280 {lab=SW0[8:0]}
N 800 -160 900 -160 {lab=SW1[8:0]}
N 800 -220 900 -220 {lab=B[9:0]}
N 220 -360 220 -320 {lab=VDD}
N 220 -120 220 -80 {lab=VSS}
N 260 -360 260 -320 {lab=SAMP}
N 260 -120 260 -80 {lab=CLK}
N 340 -260 420 -260 {lab=SW1[8:0]}
N 340 -240 420 -240 {lab=SW0[8:0]}
N 340 -200 420 -200 {lab=SW0[8:0]}
N 340 -180 420 -180 {lab=SW1[8:0]}
N 340 -280 420 -280 {lab=VX}
N 340 -160 420 -160 {lab=VY}
N 340 -220 460 -220 {lab=COMP}
N 460 -220 460 -200 {lab=COMP}
N 460 -200 600 -200 {lab=COMP}
N 60 -220 100 -220 {lab=VIN}
C {lab_wire.sym} 580 -200 0 0 {name=p138 sig_type=std_logic lab=COMP}
C {designs/sar_adc/digital/logica_digital_TOP/xschem/logica_digital_TOP.sym} 720 -220 0 0 {name=xREG}
C {lab_wire.sym} 700 -340 1 0 {name=p149 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 700 -100 1 1 {name=p150 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 880 -280 0 0 {name=p151 sig_type=std_logic lab=SW0[8:0]}
C {lab_wire.sym} 880 -160 0 0 {name=p152 sig_type=std_logic lab=SW1[8:0]}
C {iopin.sym} 220 -80 3 1 {name=p156 lab=VSS}
C {iopin.sym} 220 -360 1 1 {name=p157 lab=VDD}
C {ipin.sym} 180 -360 3 1 {name=p158 lab=VRP}
C {ipin.sym} 180 -80 3 0 {name=p159 lab=VRN}
C {ipin.sym} 540 -240 0 0 {name=p1 lab=CLK}
C {ipin.sym} 540 -220 0 0 {name=p22 lab=SAMP}
C {opin.sym} 900 -220 0 0 {name=p135 lab=B[9:0]}
C {ipin.sym} 60 -220 0 0 {name=p148 lab=VIN}
C {designs/sar_adc/top/sar_adc_10b_core/xschem/sar_adc_10b_core.sym} 220 -220 0 0 {name=xCORE}
C {lab_wire.sym} 410 -240 0 0 {name=p6 sig_type=std_logic lab=SW0[8:0]}
C {lab_wire.sym} 410 -260 0 0 {name=p7 sig_type=std_logic lab=SW1[8:0]}
C {lab_wire.sym} 410 -180 0 0 {name=p8 sig_type=std_logic lab=SW1[8:0]}
C {lab_wire.sym} 260 -360 3 1 {name=p10 sig_type=std_logic lab=SAMP}
C {lab_wire.sym} 260 -80 3 0 {name=p11 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 410 -200 0 0 {name=p9 sig_type=std_logic lab=SW0[8:0]}
C {iopin.sym} 420 -280 2 1 {name=p161 lab=VX}
C {iopin.sym} 420 -160 2 1 {name=p160 lab=VY}
