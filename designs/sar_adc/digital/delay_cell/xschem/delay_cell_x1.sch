v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 640 0 720 0 {lab=#net1}
N -80 0 -5 0 {lab=#net2}
N -5 0 0 0 {lab=#net2}
N 160 0 240 0 {lab=#net3}
N 400 0 480 0 {lab=#net4}
N -160 -120 -160 -70 {lab=VDD}
N -160 -120 800 -120 {lab=VDD}
N 800 -120 800 -70 {lab=VDD}
N 560 -120 560 -70 {lab=VDD}
N 320 -120 320 -70 {lab=VDD}
N 80 -120 80 -70 {lab=VDD}
N -160 70 -160 120 {lab=VSS}
N -160 120 560 120 {lab=VSS}
N 560 70 560 120 {lab=VSS}
N 320 70 320 120 {lab=VSS}
N 80 70 80 120 {lab=VSS}
N 560 120 800 120 {lab=VSS}
N 800 70 800 120 {lab=VSS}
N 880 0 920 0 {lab=OUT}
N -280 0 -240 0 {lab=IN}
N -160 120 -160 160 {lab=VSS}
N -160 -180 -160 -120 {lab=VDD}
C {iopin.sym} -280 0 0 1 {name=p1 lab=IN
}
C {iopin.sym} 920 0 2 1 {name=p2 lab=OUT}
C {iopin.sym} -160 -180 0 1 {name=p3 lab=VDD
}
C {iopin.sym} -160 160 0 1 {name=p4 lab=VSS
}
C {designs/sar_adc/digital/edge_inv_x1/xschem/inverter.sym} -140 20 0 0 {name=x1}
C {designs/sar_adc/digital/edge_inv_x1/xschem/inverter.sym} 100 20 0 0 {name=x2}
C {designs/sar_adc/digital/edge_inv_x1/xschem/inverter.sym} 340 20 0 0 {name=x3}
C {designs/sar_adc/digital/edge_inv_x1/xschem/inverter.sym} 580 20 0 0 {name=x4}
C {designs/sar_adc/digital/edge_inv_x1/xschem/inverter.sym} 820 20 0 0 {name=x5}
