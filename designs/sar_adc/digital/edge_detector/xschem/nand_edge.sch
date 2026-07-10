v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 470 -180 550 -180 {lab=#net1}
N 690 -180 740 -180 {lab=out}
N 130 -280 130 -180 {lab=#net1}
N 130 -180 350 -180 {lab=#net1}
N 350 -280 350 -180 {lab=#net1}
N 240 -180 240 -160 {lab=#net1}
N 160 -130 200 -130 {lab=A}
N 150 -130 160 -130 {lab=A}
N 240 -100 240 -70 {lab=#net2}
N 170 -40 200 -40 {lab=B}
N 240 -10 240 20 {lab=VSS}
N 240 -40 260 -40 {lab=VSS}
N 260 -40 260 0 {lab=VSS}
N 240 0 260 0 {lab=VSS}
N 240 -130 270 -130 {lab=VSS}
N 320 -310 350 -310 {lab=VDD}
N 350 -360 350 -340 {lab=VDD}
N 130 -360 130 -340 {lab=VDD}
N 70 -310 90 -310 {lab=A}
N 390 -310 410 -310 {lab=B}
N 350 -180 470 -180 {lab=#net1}
N 130 -310 180 -310 {lab=VDD}
N 180 -350 180 -310 {lab=VDD}
N 130 -350 180 -350 {lab=VDD}
N 320 -350 320 -310 {lab=VDD}
N 320 -350 350 -350 {lab=VDD}
N 610 -290 610 -250 {lab=VDD}
N 610 -110 610 -70 {lab=VSS}
C {iopin.sym} 130 -360 3 0 {name=p16 lab=VDD}
C {lab_pin.sym} 740 -180 0 1 {name=p17 sig_type=std_logic lab=out}
C {symbols/pfet_03v3.sym} 110 -310 0 0 {name=M5
L=0.28u
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
C {symbols/nfet_03v3.sym} 220 -130 0 0 {name=M6
L=0.28u
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
C {symbols/pfet_03v3.sym} 370 -310 0 1 {name=M7
L=0.28u
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
C {symbols/nfet_03v3.sym} 220 -40 0 0 {name=M8
L=0.28u
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
C {lab_pin.sym} 350 -360 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {iopin.sym} 240 20 2 0 {name=p24 lab=VSS}
C {lab_pin.sym} 150 -130 0 0 {name=p25 sig_type=std_logic lab=A}
C {lab_pin.sym} 170 -40 0 0 {name=p26 sig_type=std_logic lab=B}
C {lab_pin.sym} 70 -310 0 0 {name=p27 sig_type=std_logic lab=A}
C {lab_pin.sym} 410 -310 2 0 {name=p28 sig_type=std_logic lab=B}
C {lab_pin.sym} 270 -130 2 0 {name=p29 sig_type=std_logic lab=VSS}
C {designs/sar_adc/digital/gate_buf_x1/xschem/gate_buf_x1.sym} 610 -180 0 0 {name=x1}
C {iopin.sym} 0 -440 0 0 {name=p3 lab=A
}
C {iopin.sym} 0 -410 0 0 {name=p4 lab=B}
C {iopin.sym} 0 -380 0 0 {name=p5 lab=out}
C {lab_pin.sym} 610 -290 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 610 -70 2 0 {name=p2 sig_type=std_logic lab=VSS}
