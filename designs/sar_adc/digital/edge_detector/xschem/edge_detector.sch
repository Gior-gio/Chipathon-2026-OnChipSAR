v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 480 -400 480 -280 {lab=IN}
N 660 -250 670 -260 {lab=IN}
N 670 -260 690 -260 {lab=IN}
N 690 -260 700 -250 {lab=IN}
N 1180 -380 1240 -380 {lab=OUT}
N 440 -400 520 -400 {lab=IN}
N 840 -400 960 -400 {lab=#net1}
N 480 -250 660 -250 {lab=IN}
N 480 -280 480 -260 {lab=IN}
N 900 -360 960 -360 {lab=IN}
N 700 -250 900 -250 {lab=IN}
N 480 -260 480 -250 {lab=IN}
N 440 -200 680 -200 {lab=VSS}
N 680 -320 680 -200 {lab=VSS}
N 680 -200 1060 -200 {lab=VSS}
N 440 -520 1060 -520 {lab=VDD}
N 680 -520 680 -480 {lab=VDD}
N 900 -360 900 -250 {lab=IN}
N 1060 -300 1060 -200 {lab=VSS}
N 1060 -520 1060 -460 {lab=VDD}
C {iopin.sym} 440 -520 0 1 {name=p15 lab=VDD}
C {iopin.sym} 440 -200 0 1 {name=p16 lab=VSS}
C {ipin.sym} 440 -400 0 0 {name=p17 lab=IN}
C {opin.sym} 1240 -380 0 0 {name=p18 lab=OUT}
C {designs/sar_adc/digital/delay_cell/xschem/delay_cell_x1.sym} 740 -400 0 0 {name=x1}
C {designs/sar_adc/digital/nand_edge/xschem/NAND.sym} 1060 -380 0 0 {name=x2}
