v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 700 -380 60 -380 60 -60 700 -60 700 -380 {}
N 240 -200 240 -160 {lab=VIN}
N 520 -200 520 -160 {lab=VIN}
N 240 -300 240 -260 {lab=VOUT}
N 520 -300 520 -260 {lab=VOUT}
N 380 -160 380 -120 {lab=VIN}
N 140 -230 200 -230 {lab=CLK}
N 560 -230 620 -230 {lab=CLKN}
N 240 -160 520 -160 {lab=VIN}
N 240 -300 520 -300 {lab=VOUT}
N 240 -230 300 -230 {lab=VSS}
N 460 -230 520 -230 {lab=VDD}
C {symbols/nfet_03v3.sym} 220 -230 0 0 {name=MSN
L=0.28u
W=0.5u
nf=1
m=7
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 540 -230 0 1 {name=MSP
L=0.28u
W=0.5u
nf=1
m=7
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {iopin.sym} 380 -120 1 0 {name=p1 lab=VIN}
C {iopin.sym} 380 -300 3 0 {name=p3 lab=VOUT}
C {iopin.sym} 140 -230 0 1 {name=p2 lab=CLK}
C {iopin.sym} 620 -230 0 0 {name=p4 lab=CLKN}
C {iopin.sym} 300 -230 0 0 {name=p5 lab=VSS}
C {iopin.sym} 460 -230 0 1 {name=p6 lab=VDD}
