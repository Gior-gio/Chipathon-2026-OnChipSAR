v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 -60 80 {}
N -100 0 -100 40 {lab=B}
N 100 0 100 40 {lab=B}
N -100 -100 -100 -60 {lab=A}
N 100 -100 100 -60 {lab=A}
N 140 -30 180 -30 {lab=CLKN}
N -180 -30 -140 -30 {lab=CLK}
N -0 40 -0 70 {lab=B}
N -0 70 -0 80 {lab=B}
N 0 -140 0 -100 {lab=A}
N -100 40 100 40 {lab=B}
N -100 -100 100 -100 {lab=A}
N -100 -30 -60 -30 {lab=VSS}
N 60 -30 100 -30 {lab=VDD}
C {symbols/nfet_03v3.sym} -120 -30 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 120 -30 2 0 {name=M2
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
C {lab_pin.sym} 0 80 0 0 {name=p1 sig_type=std_logic lab=B
}
C {lab_pin.sym} -180 -30 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -60 -30 0 1 {name=p3 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 60 -30 2 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -30 0 1 {name=p5 sig_type=std_logic lab=CLKN
}
C {lab_pin.sym} 0 -140 0 0 {name=p7 sig_type=std_logic lab=A}
C {iopin.sym} 140 -200 0 0 {name=p6 lab=VDD}
C {iopin.sym} 140 -160 0 0 {name=p8 lab=VSS}
C {ipin.sym} 290 -200 0 0 {name=p9 lab=CLK}
C {ipin.sym} 290 -160 0 0 {name=p10 lab=CLKN
}
C {iopin.sym} 420 -200 0 0 {name=p11 lab=A}
C {iopin.sym} 420 -160 0 0 {name=p12 lab=B}
