v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 370 -520 370 -460 {lab=VDD}
N 370 -400 370 -320 {lab=#net1}
N 290 -430 330 -430 {lab=VIN}
N 290 -430 290 -360 {lab=VIN}
N 250 -360 290 -360 {lab=VIN}
N 290 -360 290 -290 {lab=VIN}
N 290 -290 330 -290 {lab=VIN}
N 470 -480 470 -430 {lab=VDD}
N 370 -480 470 -480 {lab=VDD}
N 370 -290 470 -290 {lab=VSS}
N 470 -290 470 -240 {lab=VSS}
N 370 -240 470 -240 {lab=VSS}
N 370 -260 370 -220 {lab=VSS}
N 590 -400 590 -320 {lab=VOUT}
N 590 -430 690 -430 {lab=VDD}
N 690 -480 690 -430 {lab=VDD}
N 590 -480 690 -480 {lab=VDD}
N 590 -290 690 -290 {lab=VSS}
N 690 -290 690 -240 {lab=VSS}
N 590 -240 690 -240 {lab=VSS}
N 510 -430 550 -430 {lab=#net1}
N 510 -430 510 -360 {lab=#net1}
N 510 -360 510 -290 {lab=#net1}
N 510 -290 550 -290 {lab=#net1}
N 370 -360 510 -360 {lab=#net1}
N 590 -520 590 -460 {lab=VDD}
N 590 -260 590 -220 {lab=VSS}
N 370 -430 470 -430 {lab=VDD}
N 370 -550 370 -520 {lab=VDD}
N 590 -550 590 -520 {lab=VDD}
N 590 -360 710 -360 {lab=VOUT}
C {symbols/nfet_03v3.sym} 350 -290 0 0 {name=MN1
L=0.28u
W=2u
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
C {symbols/pfet_03v3.sym} 350 -430 0 0 {name=MP1
L=0.28u
W=6u
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
C {iopin.sym} 370 -550 1 1 {name=p5 lab=VDD}
C {iopin.sym} 370 -220 1 0 {name=p4 lab=VSS}
C {symbols/pfet_03v3.sym} 570 -430 0 0 {name=MP2
L=0.28u
W=6u
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
C {lab_wire.sym} 590 -550 3 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 590 -220 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {iopin.sym} 250 -360 2 0 {name=p6 lab=VIN}
C {iopin.sym} 710 -360 0 0 {name=p2 lab=VOUT}
C {symbols/nfet_03v3.sym} 570 -290 0 0 {name=MN2
L=0.28u
W=2u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
