v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -0 80 0 120 {lab=#net1}
N -80 50 -40 50 {lab=A}
N -80 150 -40 150 {lab=B}
N -0 150 60 150 {lab=VSS}
N -0 50 60 50 {lab=VSS}
N -0 180 0 200 {lab=#net2}
N -0 200 0 220 {lab=#net2}
N -100 -20 -100 0 {lab=#net3}
N -80 -0 80 -0 {lab=#net3}
N 100 -20 100 0 {lab=#net3}
N 0 0 -0 20 {lab=#net3}
N 100 -50 160 -50 {lab=VDD}
N -100 -50 -40 -50 {lab=VDD}
N -100 -0 -80 0 {lab=#net3}
N 80 -0 100 0 {lab=#net3}
N 40 -50 60 -50 {lab=B}
N -160 -50 -140 -50 {lab=A}
N -100 -120 -100 -80 {lab=VDD}
N 100 -120 100 -80 {lab=VDD}
N -300 -280 -260 -280 {lab=VDD}
N -300 -240 -260 -240 {lab=VSS}
N -300 -200 -260 -200 {lab=A}
N -300 -160 -260 -160 {lab=B}
N -300 -120 -260 -120 {lab=OUT}
N 100 0 160 0 {lab=#net3}
C {symbols/pfet_03v3.sym} 80 -50 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -120 -50 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -20 50 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -20 150 0 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} -260 -280 0 0 {name=p1 lab=VDD}
C {iopin.sym} -260 -240 0 0 {name=p2 lab=VSS
}
C {ipin.sym} -300 -200 0 0 {name=p3 lab=A}
C {ipin.sym} -300 -160 0 0 {name=p4 lab=B}
C {opin.sym} -260 -120 0 0 {name=p5 lab=OUT}
C {lab_pin.sym} -300 -280 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -300 -240 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -260 -200 0 1 {name=p8 sig_type=std_logic lab=A}
C {lab_pin.sym} -260 -160 0 1 {name=p9 sig_type=std_logic lab=B}
C {lab_pin.sym} -300 -120 0 0 {name=p10 sig_type=std_logic lab=OUT}
C {lab_pin.sym} -160 -50 0 0 {name=p11 sig_type=std_logic lab=A}
C {lab_pin.sym} 40 -50 0 0 {name=p12 sig_type=std_logic lab=B}
C {lab_pin.sym} -80 50 0 0 {name=p13 sig_type=std_logic lab=A}
C {lab_pin.sym} -80 150 0 0 {name=p14 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 50 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 150 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -40 -50 0 1 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 160 -50 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -100 -120 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -120 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 160 0 0 1 {name=p21 sig_type=std_logic lab=OUT}
