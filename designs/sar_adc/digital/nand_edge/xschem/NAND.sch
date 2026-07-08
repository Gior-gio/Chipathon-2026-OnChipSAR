v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 0 240 0 {lab=#net1}
N 400 0 440 0 {lab=#net2}
N 600 -0 650 -0 {lab=out}
N 320 -110 320 -70 {lab=VDD}
N 520 -100 520 -70 {lab=VDD}
N 320 70 320 130 {lab=VSS}
N 520 70 520 110 {lab=VSS}
N -180 -100 -180 -0 {lab=#net1}
N -180 -0 40 -0 {lab=#net1}
N 40 -100 40 -0 {lab=#net1}
N -70 0 -70 20 {lab=#net1}
N -150 50 -110 50 {lab=A}
N -160 50 -150 50 {lab=A}
N -70 80 -70 110 {lab=#net3}
N -140 140 -110 140 {lab=B}
N -70 170 -70 200 {lab=VSS}
N -70 140 -50 140 {lab=VSS}
N -50 140 -50 180 {lab=VSS}
N -70 180 -50 180 {lab=VSS}
N -70 50 -40 50 {lab=VSS}
N 10 -130 40 -130 {lab=VDD}
N 40 -180 40 -160 {lab=VDD}
N -180 -180 -180 -160 {lab=VDD}
N -240 -130 -220 -130 {lab=A}
N 80 -130 100 -130 {lab=B}
N 40 -0 160 -0 {lab=#net1}
N -180 -130 -130 -130 {lab=VDD}
N -130 -170 -130 -130 {lab=VDD}
N -180 -170 -130 -170 {lab=VDD}
N 10 -170 10 -130 {lab=VDD}
N 10 -170 40 -170 {lab=VDD}
C {iopin.sym} -180 -180 3 0 {name=p1 lab=VDD}
C {lab_pin.sym} 650 0 0 1 {name=p21 sig_type=std_logic lab=out}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 340 20 0 0 {name=xINVA}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 540 20 0 0 {name=xINVB[2:0]}
C {lab_pin.sym} 320 -110 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -100 0 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 130 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 520 110 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} -200 -130 0 0 {name=M2
L=0.56u
W=0.25u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -90 50 0 0 {name=M1
L=0.56u
W=0.25u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 60 -130 0 1 {name=M3
L=0.56u
W=0.25u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -90 140 0 0 {name=M4
L=0.56u
W=0.25u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} -360 -270 0 0 {name=p3 lab=A
}
C {iopin.sym} -360 -240 0 0 {name=p4 lab=B}
C {iopin.sym} -360 -210 0 0 {name=p5 lab=out}
C {lab_pin.sym} 40 -180 1 0 {name=p10 sig_type=std_logic lab=VDD}
C {iopin.sym} -70 200 2 0 {name=p11 lab=VSS}
C {lab_pin.sym} -160 50 0 0 {name=p12 sig_type=std_logic lab=A}
C {lab_pin.sym} -140 140 0 0 {name=p13 sig_type=std_logic lab=B}
C {lab_pin.sym} -240 -130 0 0 {name=p14 sig_type=std_logic lab=A}
C {lab_pin.sym} 100 -130 2 0 {name=p15 sig_type=std_logic lab=B}
C {lab_pin.sym} -40 50 2 0 {name=p2 sig_type=std_logic lab=VSS}
