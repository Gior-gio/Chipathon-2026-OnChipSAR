v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 800 -810 980 -810 980 -610 800 -610 800 -810 {}
T {CONTROL SIGNALS
FROM SAR LOGIC} 810 -800 0 0 0.3 0.3 {}
N 500 -400 560 -400 {lab=VY}
N 500 -440 560 -440 {lab=VX}
N 560 -460 560 -440 {lab=VX}
N 560 -400 560 -380 {lab=VY}
N 740 -420 800 -420 {lab=CLK}
N 880 -550 880 -490 {lab=VDD}
N 880 -350 880 -290 {lab=VSS}
N 560 -460 800 -460 {lab=VX}
N 560 -380 800 -380 {lab=VY}
N 550 -670 590 -670 {lab=VSS}
N 690 -670 730 -670 {lab=VDD}
N 620 -810 620 -750 {lab=SAMP}
N 640 -810 640 -750 {lab=VIN}
N 640 -590 640 -460 {lab=VX}
N 550 -170 590 -170 {lab=VSS}
N 690 -170 730 -170 {lab=VDD}
N 620 -90 620 -30 {lab=SAMP}
N 640 -90 640 -30 {lab=VRN}
N 640 -380 640 -250 {lab=VY}
N 640 -330 660 -330 {lab=VY}
N 640 -510 660 -510 {lab=VX}
N 940 -450 1020 -450 {lab=COMP}
N 940 -390 1020 -390 {lab=COMPN}
C {lab_wire.sym} 880 -510 1 0 {name=p136 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 880 -330 1 1 {name=p137 sig_type=std_logic lab=VSS}
C {designs/sar_adc/samplehold/bootstrapped/xschem/bootstrapped.sym} 640 -670 1 0 {name=xSHP}
C {lab_wire.sym} 730 -670 0 0 {name=p139 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 550 -670 0 1 {name=p140 sig_type=std_logic lab=VSS}
C {designs/sar_adc/samplehold/bootstrapped/xschem/bootstrapped.sym} 640 -170 1 1 {name=xSHN}
C {lab_wire.sym} 700 -170 2 0 {name=p143 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 580 -170 2 1 {name=p144 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -80 1 1 {name=p145 sig_type=std_logic lab=SAMP}
C {lab_wire.sym} 640 -80 1 1 {name=p146 sig_type=std_logic lab=VRN}
C {ipin.sym} 640 -810 1 0 {name=p148 lab=VIN}
C {iopin.sym} 500 -400 0 1 {name=p160 lab=VY}
C {iopin.sym} 500 -440 0 1 {name=p161 lab=VX}
C {lab_wire.sym} 960 -390 0 1 {name=p188 sig_type=std_logic lab=COMPN}
C {designs/sar_adc/comparator/StrongARM/xschem/strongARM.sym} 960 -420 0 0 {name=xCOMP}
C {ipin.sym} 620 -810 1 0 {name=p1 lab=SAMP}
C {iopin.sym} 1020 -450 2 1 {name=p22 lab=COMP}
C {iopin.sym} 840 -730 0 0 {name=p138 lab=SW1p[8:0]}
C {iopin.sym} 840 -700 0 0 {name=p141 lab=SW0p[8:0]}
C {iopin.sym} 840 -670 0 0 {name=p147 lab=SW1n[8:0]}
C {iopin.sym} 840 -640 0 0 {name=p149 lab=SW0n[8:0]}
C {ipin.sym} 740 -420 0 0 {name=p150 lab=CLK}
C {noconn.sym} 1020 -390 0 1 {name=l2}
C {iopin.sym} 170 -720 0 1 {name=p156 lab=VSS}
C {iopin.sym} 170 -740 0 1 {name=p157 lab=VDD}
