v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 720 -680 40 -680 40 -120 720 -120 720 -680 {}
P 4 1 100 -500 {}
P 4 5 760 -760 1580 -760 1580 -40 760 -40 760 -760 {}
T {CONTROL SIGNALS
FROM SAR LOGIC} 370 -640 0 0 0.3 0.3 {}
T {TO BOTTOM PLATE
DAC VOLTAGES} 1410 -730 0 0 0.3 0.3 {}
N 240 -500 240 -440 {lab=VDD}
N 240 -380 240 -300 {lab=sn[0]}
N 160 -410 200 -410 {lab=s[0]}
N 160 -410 160 -340 {lab=s[0]}
N 160 -340 160 -270 {lab=s[0]}
N 160 -270 200 -270 {lab=s[0]}
N 240 -410 340 -410 {lab=VDD}
N 340 -460 340 -410 {lab=VDD}
N 240 -460 340 -460 {lab=VDD}
N 240 -270 340 -270 {lab=VSS}
N 340 -270 340 -220 {lab=VSS}
N 240 -220 340 -220 {lab=VSS}
N 240 -240 240 -200 {lab=VSS}
N 580 -380 580 -300 {lab=sn[1]}
N 580 -410 680 -410 {lab=VDD}
N 680 -460 680 -410 {lab=VDD}
N 580 -460 680 -460 {lab=VDD}
N 580 -270 680 -270 {lab=VSS}
N 680 -270 680 -220 {lab=VSS}
N 580 -220 680 -220 {lab=VSS}
N 500 -410 540 -410 {lab=s[1]}
N 500 -410 500 -340 {lab=s[1]}
N 500 -340 500 -270 {lab=s[1]}
N 500 -270 540 -270 {lab=s[1]}
N 580 -500 580 -440 {lab=VDD}
N 580 -240 580 -200 {lab=VSS}
N 240 -340 340 -340 {lab=sn[0]}
N 580 -340 680 -340 {lab=sn[1]}
N 1180 -530 1240 -530 {lab=s[1]}
N 1180 -570 1240 -570 {lab=sn[1]}
N 80 -340 160 -340 {lab=s[0]}
N 420 -340 500 -340 {lab=s[1]}
N 1180 -550 1240 -550 {lab=#net1}
N 1320 -660 1320 -600 {lab=VDD}
N 1180 -270 1240 -270 {lab=sn[1]}
N 1180 -230 1240 -230 {lab=#net2}
N 1320 -200 1320 -140 {lab=VDD}
N 1460 -400 1520 -400 {lab=CI}
N 860 -620 920 -620 {lab=VBP}
N 1000 -730 1000 -670 {lab=VDD}
N 1400 -550 1460 -550 {lab=CI}
N 1400 -250 1460 -250 {lab=CI}
N 860 -600 920 -600 {lab=s[0]}
N 860 -640 920 -640 {lab=sn[0]}
N 1000 -430 1000 -370 {lab=VDD}
N 1080 -480 1140 -480 {lab=#net1}
N 1000 -570 1000 -530 {lab=VSS}
N 1080 -620 1140 -620 {lab=#net1}
N 1140 -620 1140 -480 {lab=#net1}
N 1000 -130 1000 -70 {lab=VDD}
N 1080 -180 1140 -180 {lab=#net3}
N 1000 -270 1000 -230 {lab=VSS}
N 1080 -320 1140 -320 {lab=#net3}
N 1140 -320 1140 -180 {lab=#net3}
N 1140 -550 1180 -550 {lab=#net1}
N 1140 -250 1240 -250 {lab=#net3}
N 1460 -550 1460 -250 {lab=CI}
N 1320 -500 1320 -300 {lab=VSS}
N 860 -480 920 -480 {lab=VBN}
N 860 -460 920 -460 {lab=s[0]}
N 860 -500 920 -500 {lab=sn[0]}
N 860 -320 920 -320 {lab=VRST}
N 860 -300 920 -300 {lab=s[0]}
N 860 -340 920 -340 {lab=sn[0]}
N 860 -180 920 -180 {lab=VSAM}
N 860 -160 920 -160 {lab=s[0]}
N 860 -200 920 -200 {lab=sn[0]}
C {symbols/nfet_03v3.sym} 220 -270 0 0 {name=MIN1
L=0.28u
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
C {symbols/pfet_03v3.sym} 220 -410 0 0 {name=MIP1
L=0.28u
W=0.5u
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
C {ipin.sym} 340 -620 0 0 {name=p2 lab=s[1:0]}
C {iopin.sym} 240 -500 1 1 {name=p5 lab=VDD}
C {iopin.sym} 240 -200 1 0 {name=p4 lab=VSS}
C {symbols/nfet_03v3.sym} 560 -270 0 0 {name=MN2
L=0.28u
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
C {symbols/pfet_03v3.sym} 560 -410 0 0 {name=MP2
L=0.28u
W=0.5u
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
C {lab_wire.sym} 580 -500 3 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 580 -200 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 270 -340 0 1 {name=p6 sig_type=std_logic lab=sn[0]}
C {lab_wire.sym} 610 -340 0 1 {name=p8 sig_type=std_logic lab=sn[1]}
C {ipin.sym} 860 -320 0 0 {name=p11 lab=VRST}
C {iopin.sym} 1520 -400 2 1 {name=p1 lab=CI}
C {ipin.sym} 860 -180 0 0 {name=p16 lab=VSAM}
C {ipin.sym} 860 -620 0 0 {name=p26 lab=VBP}
C {ipin.sym} 860 -480 0 0 {name=p31 lab=VBN}
C {lab_wire.sym} 1230 -530 0 0 {name=p36 sig_type=std_logic lab=s[1]}
C {lab_wire.sym} 1230 -570 0 0 {name=p37 sig_type=std_logic lab=sn[1]}
C {lab_wire.sym} 100 -340 0 1 {name=p38 sig_type=std_logic lab=s[0]}
C {lab_wire.sym} 440 -340 0 1 {name=p39 sig_type=std_logic lab=s[1]}
C {designs/sar_adc/dac/dac_sw_1state/xschem/dac_sw_1state.sym} 1320 -550 0 0 {name=xP}
C {lab_wire.sym} 1320 -650 3 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1320 -380 3 1 {name=p40 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1230 -230 0 0 {name=p41 sig_type=std_logic lab=s[1]}
C {lab_wire.sym} 1230 -270 0 0 {name=p42 sig_type=std_logic lab=sn[1]}
C {designs/sar_adc/dac/dac_sw_1state/xschem/dac_sw_1state.sym} 1320 -250 2 1 {name=x2}
C {lab_wire.sym} 1320 -150 3 1 {name=p43 sig_type=std_logic lab=VDD}
C {designs/sar_adc/dac/dac_sw_1state/xschem/dac_sw_1state.sym} 1000 -620 0 0 {name=xBP}
C {lab_wire.sym} 1000 -720 3 0 {name=p46 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1000 -540 3 1 {name=p47 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 870 -600 0 1 {name=p44 sig_type=std_logic lab=s[0]}
C {lab_wire.sym} 870 -640 0 1 {name=p45 sig_type=std_logic lab=sn[0]}
C {designs/sar_adc/dac/dac_sw_1state/xschem/dac_sw_1state.sym} 1000 -480 2 1 {name=x4}
C {lab_wire.sym} 1000 -380 3 1 {name=p50 sig_type=std_logic lab=VDD}
C {designs/sar_adc/dac/dac_sw_1state/xschem/dac_sw_1state.sym} 1000 -320 0 0 {name=x5}
C {lab_wire.sym} 1000 -240 3 1 {name=p52 sig_type=std_logic lab=VSS}
C {designs/sar_adc/dac/dac_sw_1state/xschem/dac_sw_1state.sym} 1000 -180 2 1 {name=x6}
C {lab_wire.sym} 1000 -80 3 1 {name=p55 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 870 -460 0 1 {name=p48 sig_type=std_logic lab=s[0]}
C {lab_wire.sym} 870 -500 0 1 {name=p49 sig_type=std_logic lab=sn[0]}
C {lab_wire.sym} 870 -300 0 1 {name=p51 sig_type=std_logic lab=s[0]}
C {lab_wire.sym} 870 -340 0 1 {name=p53 sig_type=std_logic lab=sn[0]}
C {lab_wire.sym} 870 -160 0 1 {name=p54 sig_type=std_logic lab=s[0]}
C {lab_wire.sym} 870 -200 0 1 {name=p56 sig_type=std_logic lab=sn[0]}
