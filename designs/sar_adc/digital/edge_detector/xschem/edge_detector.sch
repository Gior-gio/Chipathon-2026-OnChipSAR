v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1300 -240 1440 -240 {lab=#net1}
N 260 -360 260 -310 {lab=VDD}
N 500 -360 500 -310 {lab=VDD}
N 740 -360 740 -310 {lab=VDD}
N 980 -360 980 -310 {lab=VDD}
N 1220 -360 1220 -310 {lab=VDD}
N 1520 -360 1520 -300 {lab=VDD}
N 100 -360 1520 -360 {lab=VDD}
N 100 -80 1520 -80 {lab=VSS}
N 140 -240 140 -120 {lab=IN}
N 140 -120 240 -120 {lab=IN}
N 240 -120 250 -130 {lab=IN}
N 250 -130 270 -130 {lab=IN}
N 270 -130 280 -120 {lab=IN}
N 280 -120 480 -120 {lab=IN}
N 480 -120 490 -130 {lab=IN}
N 490 -130 510 -130 {lab=IN}
N 510 -130 520 -120 {lab=IN}
N 520 -120 720 -120 {lab=IN}
N 720 -120 730 -130 {lab=IN}
N 730 -130 750 -130 {lab=IN}
N 750 -130 760 -120 {lab=IN}
N 760 -120 960 -120 {lab=IN}
N 960 -120 970 -130 {lab=IN}
N 970 -130 990 -130 {lab=IN}
N 990 -130 1000 -120 {lab=IN}
N 1000 -120 1200 -120 {lab=IN}
N 1200 -120 1210 -130 {lab=IN}
N 1210 -130 1230 -130 {lab=IN}
N 1230 -130 1240 -120 {lab=IN}
N 1400 -200 1440 -200 {lab=IN}
N 1240 -120 1400 -120 {lab=IN}
N 1400 -200 1400 -120 {lab=IN}
N 1520 -140 1520 -80 {lab=VSS}
N 260 -170 260 -80 {lab=VSS}
N 500 -170 500 -80 {lab=VSS}
N 740 -170 740 -80 {lab=VSS}
N 980 -170 980 -80 {lab=VSS}
N 1220 -170 1220 -80 {lab=VSS}
N 1640 -220 1700 -220 {lab=OUT}
N 1060 -240 1140 -240 {lab=#net2}
N 100 -240 180 -240 {lab=IN}
N 340 -240 415 -240 {lab=#net3}
N 415 -240 420 -240 {lab=#net3}
N 580 -240 660 -240 {lab=#net4}
N 820 -240 900 -240 {lab=#net5}
N 380 -240 380 -200 {lab=#net3}
N 380 -140 380 -80 {lab=VSS}
C {iopin.sym} 100 -360 0 1 {name=p15 lab=VDD}
C {iopin.sym} 100 -80 0 1 {name=p16 lab=VSS}
C {ipin.sym} 100 -240 0 0 {name=p17 lab=IN}
C {opin.sym} 1700 -220 0 0 {name=p18 lab=OUT}
C {designs/sar_adc/digital/NAND/xschem/NAND.sym} 1520 -220 0 0 {name=x1}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 1240 -220 0 0 {name=x2}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 1000 -220 0 0 {name=x3}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 760 -220 0 0 {name=x4}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 520 -220 0 0 {name=x5}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 280 -220 0 0 {name=x6}
C {capa.sym} 380 -170 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
