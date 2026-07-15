v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Simple CMOS Inverter} 590 -810 0 0 0.4 0.4 {}
N 630 -660 680 -660 {lab=vi}
N 630 -530 630 -390 {lab=vi}
N 630 -390 680 -390 {lab=vi}
N 590 -530 630 -530 {lab=vi}
N 720 -530 720 -420 {lab=vo}
N 720 -700 720 -690 {lab=vdd}
N 720 -660 750 -660 {lab=vdd}
N 750 -700 750 -660 {lab=vdd}
N 720 -700 750 -700 {lab=vdd}
N 720 -530 850 -530 {lab=vo}
N 720 -330 720 -310 {lab=vss}
N 720 -390 750 -390 {lab=vss}
N 750 -390 750 -330 {lab=vss}
N 720 -330 750 -330 {lab=vss}
N 630 -660 630 -530 {lab=vi}
N 720 -710 720 -700 {lab=vdd}
N 720 -630 720 -530 {lab=vo}
N 720 -360 720 -330 {lab=vss}
C {title.sym} 210 -180 0 0 {name=l1 author="Maria Herrera"
}
C {symbols/nfet_03v3.sym} 700 -390 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 700 -660 0 0 {name=M2
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
C {iopin.sym} 720 -710 3 0 {name=p2 lab=vdd
}
C {iopin.sym} 720 -310 1 0 {name=p1 lab=vss}
C {ipin.sym} 590 -530 0 0 {name=p4 lab=vi}
C {opin.sym} 850 -530 2 1 {name=p5 lab=vo
}
