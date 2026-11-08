v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 370 -520 370 -460 {lab=#net1}
N 370 -400 370 -320 {lab=#net2}
N 290 -430 330 -430 {lab=VIN}
N 290 -430 290 -360 {lab=VIN}
N 250 -360 290 -360 {lab=VIN}
N 290 -360 290 -290 {lab=VIN}
N 290 -290 330 -290 {lab=VIN}
N 470 -480 470 -430 {lab=#net1}
N 370 -480 470 -480 {lab=#net1}
N 370 -290 470 -290 {lab=VSS}
N 470 -290 470 -240 {lab=VSS}
N 370 -240 470 -240 {lab=VSS}
N 370 -260 370 -220 {lab=VSS}
N 590 -400 590 -320 {lab=#net3}
N 590 -430 690 -430 {lab=#net4}
N 690 -480 690 -430 {lab=#net4}
N 590 -480 690 -480 {lab=#net4}
N 590 -290 690 -290 {lab=VSS}
N 690 -290 690 -240 {lab=VSS}
N 590 -240 690 -240 {lab=VSS}
N 510 -430 550 -430 {lab=#net2}
N 510 -430 510 -360 {lab=#net2}
N 510 -360 510 -290 {lab=#net2}
N 510 -290 550 -290 {lab=#net2}
N 370 -360 510 -360 {lab=#net2}
N 590 -520 590 -460 {lab=#net4}
N 590 -260 590 -220 {lab=VSS}
N 590 -360 730 -360 {lab=#net3}
N 810 -400 810 -320 {lab=#net5}
N 810 -430 910 -430 {lab=#net6}
N 910 -480 910 -430 {lab=#net6}
N 810 -480 910 -480 {lab=#net6}
N 810 -290 910 -290 {lab=VSS}
N 910 -290 910 -240 {lab=VSS}
N 810 -240 910 -240 {lab=VSS}
N 730 -430 770 -430 {lab=#net3}
N 730 -430 730 -360 {lab=#net3}
N 730 -360 730 -290 {lab=#net3}
N 730 -290 770 -290 {lab=#net3}
N 810 -520 810 -460 {lab=#net6}
N 810 -260 810 -220 {lab=VSS}
N 810 -360 950 -360 {lab=#net5}
N 1030 -400 1030 -320 {lab=VOUT}
N 1030 -430 1130 -430 {lab=#net7}
N 1130 -480 1130 -430 {lab=#net7}
N 1030 -480 1130 -480 {lab=#net7}
N 1030 -290 1130 -290 {lab=VSS}
N 1130 -290 1130 -240 {lab=VSS}
N 1030 -240 1130 -240 {lab=VSS}
N 950 -430 990 -430 {lab=#net5}
N 950 -430 950 -360 {lab=#net5}
N 950 -360 950 -290 {lab=#net5}
N 950 -290 990 -290 {lab=#net5}
N 1030 -520 1030 -460 {lab=#net7}
N 1030 -260 1030 -220 {lab=VSS}
N 1030 -360 1170 -360 {lab=VOUT}
N 370 -430 470 -430 {lab=#net1}
N 370 -610 370 -580 {lab=VDD}
N 590 -610 590 -580 {lab=VDD}
N 810 -610 810 -580 {lab=VDD}
N 1030 -610 1030 -580 {lab=VDD}
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
C {iopin.sym} 370 -610 1 1 {name=p5 lab=VDD}
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
C {lab_wire.sym} 590 -610 3 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 590 -220 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {iopin.sym} 250 -360 2 0 {name=p6 lab=VIN}
C {iopin.sym} 1170 -360 0 0 {name=p2 lab=VOUT}
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
C {symbols/pfet_03v3.sym} 790 -430 0 0 {name=MP3
L=0.28u
W=6u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 810 -610 3 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 810 -220 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 790 -290 0 0 {name=MN3
L=0.28u
W=2u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1010 -430 0 0 {name=MP4
L=0.28u
W=6u
nf=1
m=64
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1030 -610 3 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1030 -220 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 1010 -290 0 0 {name=MN4
L=0.28u
W=2u
nf=1
m=64
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {vsource.sym} 370 -550 0 0 {name=V_inv1 value=0 savecurrent=false}
C {vsource.sym} 590 -550 0 0 {name=V_inv2 value=0 savecurrent=false}
C {vsource.sym} 810 -550 0 0 {name=V_inv3 value=0 savecurrent=false}
C {vsource.sym} 1030 -550 0 0 {name=V_inv4 value=0 savecurrent=false}
