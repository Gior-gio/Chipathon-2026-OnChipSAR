v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 340 -380 340 -310 {lab=#net1}
N 820 -590 860 -590 {lab=#net2}
N 920 -590 1000 -590 {lab=VSS}
N 890 -670 890 -630 {lab=CLK}
N 790 -670 790 -630 {lab=VDD}
N 680 -590 760 -590 {lab=#net3}
N 880 -20 920 -20 {lab=VIN}
N 950 -100 950 -60 {lab=#net3}
N 800 -210 800 -170 {lab=#net3}
N 950 -20 950 10 {lab=VSS}
N 800 -130 800 -100 {lab=VSS}
N 340 -340 650 -340 {lab=#net1}
N 650 -250 650 -240 {lab=#net1}
N 340 -250 340 -130 {lab=#net4}
N 340 -130 650 -130 {lab=#net4}
N 650 -180 650 -130 {lab=#net4}
N 650 -340 650 -250 {lab=#net1}
N 130 -40 130 30 {lab=VSS}
N 130 -550 130 -390 {lab=#net5}
N 130 -330 130 -170 {lab=#net4}
N 130 -170 130 -100 {lab=#net4}
N 130 -660 130 -550 {lab=#net5}
N 130 -800 130 -720 {lab=VDD}
N 170 -690 710 -690 {lab=#net3}
N 710 -690 710 -590 {lab=#net3}
N 100 -690 130 -690 {lab=#net5}
N 100 -690 100 -620 {lab=#net5}
N 100 -620 130 -620 {lab=#net5}
N 130 -590 620 -590 {lab=#net5}
N 130 -70 190 -70 {lab=VSS}
N 190 -70 190 0 {lab=VSS}
N 130 -0 190 0 {lab=VSS}
N 30 -70 90 -70 {lab=CLK}
N 260 -280 300 -280 {lab=CLKN}
N 260 -410 300 -410 {lab=CLKN}
N 260 -410 260 -280 {lab=CLKN}
N 230 -340 260 -340 {lab=CLKN}
N 290 -130 340 -130 {lab=#net4}
N 130 -130 290 -130 {lab=#net4}
N 340 -490 340 -440 {lab=VDD}
N 650 -550 650 -340 {lab=#net1}
N 340 -280 400 -280 {lab=VSS}
N 340 -410 390 -410 {lab=VDD}
N 390 -470 390 -410 {lab=VDD}
N 340 -470 390 -470 {lab=VDD}
N 590 -210 650 -210 {lab=VSS}
N 650 -630 650 -590 {lab=#net5}
N 600 -630 650 -630 {lab=#net5}
N 600 -630 600 -590 {lab=#net5}
N 790 -590 790 -550 {lab=VSS}
N 790 -550 980 -550 {lab=VSS}
N 980 -590 980 -550 {lab=VSS}
N 890 -590 890 -550 {lab=VSS}
N 730 -590 730 -210 {lab=#net3}
N 730 -290 810 -290 {lab=#net3}
N 810 -290 910 -290 {lab=#net3}
N 980 -20 1060 -20 {lab=VOUT}
N -120 -370 -120 -320 {lab=VSS}
N -120 -540 -120 -510 {lab=VDD}
N -220 -440 -180 -440 {lab=CLK}
N -40 -440 0 -440 {lab=CLKN}
N 710 -210 730 -210 {lab=#net3}
N 690 -210 710 -210 {lab=#net3}
N 650 -130 780 -130 {lab=#net4}
N 950 -290 950 -100 {lab=#net3}
N 910 -290 950 -290 {lab=#net3}
N 860 -20 880 -20 {lab=VIN}
N 830 -130 890 -130 {lab=VIN}
N 890 -130 890 -20 {lab=VIN}
N 800 -290 800 -210 {lab=#net3}
C {capa.sym} 130 -360 0 0 {name=C1
m=1
value=250f
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -150 -170 0 0 {name=p2 lab=CLK}
C {iopin.sym} -150 -190 0 0 {name=p3 lab=VSS}
C {iopin.sym} -150 -210 0 0 {name=p4 lab=VDD}
C {iopin.sym} -150 -130 0 0 {name=p5 lab=VOUT}
C {iopin.sym} -150 -150 0 0 {name=p6 lab=VIN}
C {lab_wire.sym} 130 -800 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 790 -660 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 890 -670 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1000 -590 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1060 -20 0 1 {name=p11 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} 860 -20 2 1 {name=p12 sig_type=std_logic lab=VIN}
C {lab_wire.sym} 950 10 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 800 -100 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 590 -210 2 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 130 30 2 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 400 -280 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 30 -70 0 0 {name=p18 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 230 -340 0 0 {name=p19 sig_type=std_logic lab=CLKN}
C {lab_wire.sym} 340 -490 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -120 -320 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -220 -440 0 0 {name=p22 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -120 -540 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 0 -440 0 1 {name=p26 sig_type=std_logic lab=CLKN
}
C {symbols/nfet_03v3.sym} 890 -610 3 1 {name=MN
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 150 -690 0 1 {name=MP1
L=0.28u
W=3u
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
C {symbols/nfet_03v3.sym} 110 -70 0 0 {name=MN1
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 320 -410 0 0 {name=MP2
L=0.28u
W=3u
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
C {symbols/nfet_03v3.sym} 320 -280 0 0 {name=MN2
L=0.28u
W=1u
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
C {symbols/nfet_03v3.sym} 670 -210 0 1 {name=MN3
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 650 -570 3 0 {name=MP3
L=0.28u
W=3u
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
C {symbols/nfet_03v3.sym} 790 -610 3 1 {name=MN4
L=0.28u
W=1u
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
C {symbols/nfet_03v3.sym} 800 -150 1 0 {name=MN5
L=0.28u
W=1u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 950 -40 1 0 {name=MN6
L=0.28u
W=1u
nf=1
m=20
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {sar_adc/samplehold/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} -120 -440 0 0 {name=x1}
