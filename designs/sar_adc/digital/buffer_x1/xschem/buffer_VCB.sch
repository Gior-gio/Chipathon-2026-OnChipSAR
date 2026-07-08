v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 0 30 0 {lab=Y}
N -110 -120 -110 -70 {lab=VDD}
N -110 -120 110 -120 {lab=VDD}
N 110 -120 110 -70 {lab=VDD}
N -0 -160 -0 -120 {lab=VDD}
N -110 70 -110 120 {lab=VSS}
N -110 120 110 120 {lab=VSS}
N 110 70 110 120 {lab=VSS}
N -0 120 0 160 {lab=VSS}
N 190 0 220 0 {lab=OUT}
N -200 0 -170 0 {lab=IN}
N -0 0 0 80 {lab=Y}
N 30 -0 50 0 {lab=Y}
C {iopin.sym} -200 0 0 1 {name=p4 lab=IN
}
C {iopin.sym} 220 0 0 0 {name=p1 lab=OUT}
C {iopin.sym} 0 -160 0 0 {name=p3 lab=VDD}
C {iopin.sym} 0 160 0 0 {name=p2 lab=VSS}
C {iopin.sym} 0 80 0 0 {name=p5 lab=Y}
C {sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} -110 0 0 0 {name=x1}
C {sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 110 0 0 0 {name=xINVB[2:0]}
