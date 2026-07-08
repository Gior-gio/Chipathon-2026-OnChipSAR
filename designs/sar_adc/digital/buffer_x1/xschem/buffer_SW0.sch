v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 0 200 0 {lab=Y}
N 360 0 420 0 {lab=OUT}
N -60 0 0 0 {lab=IN}
N 80 -100 80 -70 {lab=VDD}
N 80 -100 280 -100 {lab=VDD}
N 280 -100 280 -70 {lab=VDD}
N 180 -140 180 -100 {lab=VDD}
N 80 70 80 100 {lab=VSS}
N 80 100 280 100 {lab=VSS}
N 280 70 280 100 {lab=VSS}
N 180 100 180 140 {lab=VSS}
N 180 0 180 70 {lab=Y}
C {iopin.sym} 420 0 0 0 {name=p1 lab=OUT}
C {iopin.sym} 180 140 0 0 {name=p2 lab=VSS}
C {iopin.sym} 180 -140 0 0 {name=p3 lab=VDD}
C {iopin.sym} -60 0 0 1 {name=p4 lab=IN
}
C {iopin.sym} 180 70 0 0 {name=p5 lab=Y}
C {sar_adc/digital/buffer_inv_x1/xschem/inverter.sym} 100 20 0 0 {name=xINV1[8:0]
}
C {sar_adc/digital/buffer_inv_x1/xschem/inverter.sym} 300 20 0 0 {name=xINV0B[8:0]
}
