v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -130 240 -50 {lab=out}
N 160 -160 200 -160 {lab=in}
N 160 -160 160 -20 {lab=in}
N 160 -20 200 -20 {lab=in}
N 240 10 240 50 {lab=VSS}
N 240 -230 240 -190 {lab=VDD}
N 120 -90 160 -90 {lab=in}
N 240 -90 280 -90 {lab=out}
N 240 -20 240 10 {lab=VSS}
N 240 -190 240 -160 {lab=VDD}
C {opin.sym} 280 -90 0 0 {name=p2 lab=out}
C {symbols/nfet_03v3.sym} 220 -20 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 220 -160 0 0 {name=M2
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
C {iopin.sym} 120 -90 0 1 {name=p1 lab=in
}
C {iopin.sym} 240 -230 0 1 {name=p4 lab=VDD}
C {iopin.sym} 240 50 0 1 {name=p3 lab=VSS}
