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
N 1640 -220 1700 -220 {lab=OUT}
N 920 -240 1000 -240 {lab=IN}
N 1150 -170 1150 -80 {lab=VSS}
N 1150 -360 1150 -310 {lab=VDD}
N 960 -120 1000 -120 {lab=IN}
N 960 -240 960 -120 {lab=IN}
N 1150 -80 1520 -80 {lab=VSS}
N 1150 -360 1520 -360 {lab=VDD}
N 1000 -120 1130 -120 {lab=IN}
N 1170 -120 1240 -120 {lab=IN}
N 1300 -240 1420 -240 {lab=#net1}
N 1400 -200 1420 -200 {lab=IN}
C {iopin.sym} 1320 -360 1 1 {name=p15 lab=VDD}
C {iopin.sym} 1350 -80 3 1 {name=p16 lab=VSS}
C {ipin.sym} 920 -240 0 0 {name=p17 lab=IN}
C {opin.sym} 1700 -220 0 0 {name=p18 lab=OUT}
C {designs/sar_adc/digital/edge_detector/xschem/delay_cell.sym} 1150 -220 0 0 {name=x2}
C {designs/sar_adc/digital/edge_detector/xschem/nand_edge.sym} 1390 -120 0 0 {name=x1}
