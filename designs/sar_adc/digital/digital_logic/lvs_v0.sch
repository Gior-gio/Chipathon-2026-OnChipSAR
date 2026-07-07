v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -120 40 -60 {lab=D}
N 40 0 40 60 {lab=S}
N 40 -30 80 -30 {lab=S}
N -40 -30 -0 -30 {lab=G}
N 80 -30 80 20 {lab=S}
N 40 20 80 20 {lab=S}
C {symbols/nfet_03v3.sym} 20 -30 0 0 {name=M1
L=0.5u
W=0.5u
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
C {iopin.sym} 40 -120 0 0 {name=p1 lab=D}
C {iopin.sym} 40 60 0 0 {name=p2 lab=S}
C {iopin.sym} -40 -30 0 1 {name=p3 lab=G}
