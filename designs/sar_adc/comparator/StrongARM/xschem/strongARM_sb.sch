v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 790 -210 790 -150 {lab=CN}
N 1000 -210 1000 -150 {lab=CP}
N 790 -90 790 -20 {lab=VSS}
N 790 -20 1000 -20 {lab=VSS}
N 1000 -90 1000 -20 {lab=VSS}
N 790 -320 790 -270 {lab=ONN}
N 1000 -320 1000 -270 {lab=OPP}
N 450 -410 450 -380 {lab=VDD}
N 450 -410 1360 -410 {lab=VDD}
N 1360 -410 1360 -380 {lab=VDD}
N 1220 -410 1220 -380 {lab=VDD}
N 1000 -410 1000 -380 {lab=VDD}
N 790 -410 790 -380 {lab=VDD}
N 580 -410 580 -380 {lab=VDD}
N 580 -320 580 -300 {lab=ONN}
N 580 -300 580 -290 {lab=ONN}
N 1000 -280 1220 -280 {lab=OPP}
N 1220 -320 1220 -280 {lab=OPP}
N 1360 -320 1360 -190 {lab=CP}
N 1000 -190 1360 -190 {lab=CP}
N 220 -410 220 -320 {lab=VDD}
N 220 -410 450 -410 {lab=VDD}
N 220 -260 220 -240 {lab=#net1}
N 220 -240 310 -240 {lab=#net1}
N 310 -240 310 -210 {lab=#net1}
N 110 -240 220 -240 {lab=#net1}
N 110 -240 110 -210 {lab=#net1}
N 110 -150 110 -100 {lab=AP}
N 310 -150 310 -100 {lab=AN}
N 310 -20 790 -20 {lab=VSS}
N 310 -40 310 -20 {lab=VSS}
N 110 -40 110 -20 {lab=VSS}
N 110 -20 310 -20 {lab=VSS}
N 520 -20 520 0 {lab=VSS}
N 150 -70 270 -70 {lab=CLKK}
N 50 -180 70 -180 {lab=VIP}
N 350 -180 370 -180 {lab=VIN}
N 110 -180 310 -180 {lab=VDD}
N 670 -440 670 -410 {lab=VDD}
N 380 -350 410 -350 {lab=AN}
N 520 -350 540 -350 {lab=AN}
N 1260 -350 1280 -350 {lab=AP}
N 1400 -350 1420 -350 {lab=AP}
N 720 -120 750 -120 {lab=AN}
N 1040 -120 1070 -120 {lab=AP}
N 160 -290 180 -290 {lab=CLKK}
N 90 -290 160 -290 {lab=CLKK}
N 0 -290 90 -290 {lab=CLKK}
N 450 -350 460 -350 {lab=VDD}
N 460 -390 460 -350 {lab=VDD}
N 450 -390 460 -390 {lab=VDD}
N 580 -350 590 -350 {lab=VDD}
N 590 -390 590 -350 {lab=VDD}
N 580 -390 590 -390 {lab=VDD}
N 780 -350 790 -350 {lab=VDD}
N 780 -390 780 -350 {lab=VDD}
N 780 -390 790 -390 {lab=VDD}
N 1000 -350 1010 -350 {lab=VDD}
N 1010 -390 1010 -350 {lab=VDD}
N 1000 -390 1010 -390 {lab=VDD}
N 1210 -350 1220 -350 {lab=VDD}
N 1210 -390 1210 -350 {lab=VDD}
N 1210 -390 1220 -390 {lab=VDD}
N 1350 -350 1360 -350 {lab=VDD}
N 1350 -390 1350 -350 {lab=VDD}
N 1350 -390 1360 -390 {lab=VDD}
N 100 -70 110 -70 {lab=VSS}
N 100 -70 100 -20 {lab=VSS}
N 100 -20 110 -20 {lab=VSS}
N 310 -70 320 -70 {lab=VSS}
N 320 -70 320 -20 {lab=VSS}
N 760 -240 790 -240 {lab=VSS}
N 1000 -240 1030 -240 {lab=VSS}
N 450 -320 450 -190 {lab=CN}
N 450 -190 790 -190 {lab=CN}
N 830 -240 870 -240 {lab=OPP}
N 870 -240 920 -280 {lab=OPP}
N 920 -280 1000 -280 {lab=OPP}
N 920 -240 960 -240 {lab=ONN}
N 870 -280 920 -240 {lab=ONN}
N 790 -280 870 -280 {lab=ONN}
N 580 -280 790 -280 {lab=ONN}
N 580 -290 580 -280 {lab=ONN}
N 920 -350 960 -350 {lab=ONN}
N 830 -350 860 -350 {lab=OPP}
N 790 -120 800 -120 {lab=VSS}
N 800 -120 800 -70 {lab=VSS}
N 790 -70 800 -70 {lab=VSS}
N 990 -120 1000 -120 {lab=VSS}
N 990 -120 990 -70 {lab=VSS}
N 990 -70 1000 -70 {lab=VSS}
N 220 -290 230 -290 {lab=VDD}
N 230 -330 230 -290 {lab=VDD}
N 220 -330 230 -330 {lab=VDD}
N 790 -310 870 -310 {lab=ONN}
N 870 -310 920 -350 {lab=ONN}
N 920 -310 1000 -310 {lab=OPP}
N 860 -350 920 -310 {lab=OPP}
C {symbols/pfet_03v3.sym} 200 -290 0 0 {name=MTAIL
L=0.5u
W=0.5u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 290 -70 0 0 {name=M2
L=0.5u
W=0.5u
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
C {iopin.sym} 520 0 0 1 {name=p1 lab=VSS}
C {symbols/pfet_03v3.sym} 90 -180 0 0 {name=M3
L=0.5u
W=0.5u
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
C {symbols/pfet_03v3.sym} 330 -180 0 1 {name=M4
L=0.5u
W=0.5u
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
C {symbols/nfet_03v3.sym} 130 -70 0 1 {name=M5
L=0.5u
W=0.5u
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
C {symbols/pfet_03v3.sym} 810 -350 0 1 {name=M6
L=0.5u
W=0.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 980 -350 0 0 {name=M7
L=0.5u
W=0.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 810 -240 0 1 {name=M8
L=0.5u
W=0.5u
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
C {symbols/nfet_03v3.sym} 980 -240 0 0 {name=M9
L=0.5u
W=0.5u
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
C {symbols/nfet_03v3.sym} 770 -120 0 0 {name=M10
L=0.5u
W=0.5u
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
C {symbols/nfet_03v3.sym} 1020 -120 0 1 {name=M11
L=0.5u
W=0.5u
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
C {symbols/pfet_03v3.sym} 560 -350 0 0 {name=M12
L=0.5u
W=0.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1240 -350 0 1 {name=M13
L=0.5u
W=0.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 430 -350 0 0 {name=M14
L=0.5u
W=0.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1380 -350 0 1 {name=M15
L=0.5u
W=0.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {iopin.sym} 670 -440 0 0 {name=p3 lab=VDD}
C {iopin.sym} 370 -180 0 0 {name=p4 lab=VIN}
C {iopin.sym} 50 -180 2 0 {name=p5 lab=VIP}
C {lab_pin.sym} 760 -240 0 0 {name=p6 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1030 -240 2 0 {name=p7 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 230 -180 1 0 {name=p8 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} 310 -120 0 0 {name=p13 sig_type=std_logic lab=AN
}
C {lab_pin.sym} 110 -120 0 0 {name=p14 sig_type=std_logic lab=AP
}
C {lab_pin.sym} 380 -350 0 0 {name=p9 sig_type=std_logic lab=AN
}
C {lab_pin.sym} 520 -350 0 0 {name=p10 sig_type=std_logic lab=AN
}
C {lab_pin.sym} 720 -120 0 0 {name=p11 sig_type=std_logic lab=AN
}
C {lab_pin.sym} 1280 -350 2 0 {name=p12 sig_type=std_logic lab=AP
}
C {lab_pin.sym} 1420 -350 2 0 {name=p15 sig_type=std_logic lab=AP
}
C {lab_pin.sym} 1070 -120 2 0 {name=p16 sig_type=std_logic lab=AP
}
C {lab_pin.sym} 230 -70 1 0 {name=p17 sig_type=std_logic lab=CLKK
}
C {lab_pin.sym} 90 -290 1 0 {name=p24 sig_type=std_logic lab=CLKK
}
C {lab_pin.sym} 660 -280 2 0 {name=p27 sig_type=std_logic lab=ONN
}
C {lab_pin.sym} 1080 -280 2 0 {name=p34 sig_type=std_logic lab=OPP
}
C {lab_pin.sym} 650 -190 2 0 {name=p21 sig_type=std_logic lab=CN
}
C {lab_pin.sym} 1080 -190 2 0 {name=p23 sig_type=std_logic lab=CP
}
C {lab_pin.sym} 110 -240 0 0 {name=p36 sig_type=std_logic lab=NT
}
