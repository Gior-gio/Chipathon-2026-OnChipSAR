v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1520 -360 1520 -300 {lab=VDD}
N 1130 -120 1140 -130 {lab=IN}
N 1140 -130 1160 -130 {lab=IN}
N 1160 -130 1170 -120 {lab=IN}
N 1240 -120 1400 -120 {lab=IN}
N 1400 -200 1400 -120 {lab=IN}
N 1520 -140 1520 -80 {lab=VSS}
N 1820 -220 1880 -220 {lab=OUT}
N 920 -240 1000 -240 {lab=IN}
N 1150 -170 1150 -80 {lab=VSS}
N 1150 -360 1150 -310 {lab=VDD}
N 960 -120 1000 -120 {lab=IN}
N 960 -240 960 -120 {lab=IN}
N 1150 -80 1520 -80 {lab=VSS}
N 1150 -360 1520 -360 {lab=VDD}
N 1000 -120 1130 -120 {lab=IN}
N 1170 -120 1240 -120 {lab=IN}
N 1300 -240 1420 -240 {lab=P4}
N 1400 -200 1420 -200 {lab=IN}
N 1520 -360 1740 -360 {lab=VDD}
N 1740 -360 1740 -290 {lab=VDD}
N 1640 -220 1680 -220 {lab=EDGE}
N 1740 -150 1740 -80 {lab=VSS}
N 1520 -80 1740 -80 {lab=VSS}
C {iopin.sym} 1320 -360 1 1 {name=p15 lab=VDD}
C {iopin.sym} 1350 -80 3 1 {name=p16 lab=VSS}
C {ipin.sym} 920 -240 0 0 {name=p17 lab=IN}
C {opin.sym} 1880 -220 0 0 {name=p18 lab=OUT}
C {designs/sar_adc/digital/gate_nand_x1/xschem/gate_nand_x1.sym} 1520 -220 0 0 {name=xNAND}
C {designs/sar_adc/digital/gate_buf_x1/xschem/gate_buf_x1.sym} 1740 -220 0 0 {name=xBUF}
C {designs/sar_adc/digital/gate_delay_edge/xschem/gate_delay_edge.sym} 1150 -220 0 0 {name=xDEL}
C {lab_pin.sym} 1360 -240 3 1 {name=p8 sig_type=std_logic lab=P4
}
C {lab_pin.sym} 1660 -220 3 1 {name=p1 sig_type=std_logic lab=EDGE
}
