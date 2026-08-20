v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 40 -80 400 -80 400 0 40 0 40 -80 {}
P 4 5 20 -750 660 -750 660 -560 20 -560 20 -750 {}
P 4 5 460 -380 600 -380 600 -200 460 -200 460 -380 {}
T {EXTERNAL
REFERENCE
VOLTAGES} 180 -60 0 0 0.25 0.25 {}
T {SCALED 
REFERENCE 
VOLTAGES} 490 -320 0 0 0.25 0.25 {}
T {REFERENCE COMMON MODE} 130 -520 0 0 0.25 0.25 {}
T {DUMMIES DEVICES} 270 -740 0 0 0.25 0.25 {}
N 320 -500 320 -460 {lab=VCM}
N 320 -400 320 -360 {lab=VRY[0]}
N 320 -300 320 -260 {lab=VRY[1]}
N 320 -200 320 -160 {lab=#net1}
N 320 -380 400 -380 {lab=VRY[0]}
N 320 -280 400 -280 {lab=VRY[1]}
N 120 -500 120 -460 {lab=VCM}
N 120 -400 120 -360 {lab=VRX[0]}
N 120 -300 120 -260 {lab=VRX[1]}
N 120 -200 120 -160 {lab=#net2}
N 40 -380 120 -380 {lab=VRX[0]}
N 40 -280 120 -280 {lab=VRX[1]}
N 120 -500 320 -500 {lab=VCM}
N 140 -430 300 -430 {lab=VSS}
N 140 -330 300 -330 {lab=VSS}
N 140 -230 300 -230 {lab=VSS}
N 140 -130 300 -130 {lab=VSS}
N 120 -100 120 -40 {lab=VRP}
N 320 -100 320 -40 {lab=VRN}
N 320 -500 340 -500 {lab=VCM}
N 200 -450 210 -450 {lab=VSS}
N 200 -450 200 -430 {lab=VSS}
N 540 -620 580 -620 {lab=VSS}
N 580 -620 580 -590 {lab=VSS}
N 510 -600 510 -580 {lab=VSS}
N 450 -620 480 -620 {lab=VSS}
N 450 -620 450 -600 {lab=VSS}
N 360 -620 400 -620 {lab=VSS}
N 400 -620 400 -590 {lab=VSS}
N 330 -600 330 -580 {lab=VSS}
N 270 -620 300 -620 {lab=VSS}
N 270 -620 270 -600 {lab=VSS}
N 190 -630 230 -630 {lab=VSS}
N 230 -630 230 -600 {lab=VSS}
N 160 -610 160 -590 {lab=VSS}
N 100 -630 130 -630 {lab=VSS}
N 100 -630 100 -610 {lab=VSS}
C {symbols/ppolyf_u_3k.sym} 320 -430 0 0 {name=RN0
W=2e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 -330 0 0 {name=RN1
W=2e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 -230 0 0 {name=RN2
W=2e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 320 -130 2 1 {name=RN3
W=2e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ipin.sym} 320 -40 0 1 {name=p20 lab=VRN}
C {lab_wire.sym} 340 -380 0 1 {name=p5 sig_type=std_logic lab=VRY[0]}
C {lab_wire.sym} 340 -280 0 1 {name=p6 sig_type=std_logic lab=VRY[1]}
C {symbols/ppolyf_u_3k.sym} 120 -430 0 1 {name=RP0
W=2e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 120 -330 0 1 {name=RP1
W=2e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 120 -230 0 1 {name=RP2
W=2e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_3k.sym} 120 -130 0 1 {name=RP3
W=2e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 240 -330 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 240 -130 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {ipin.sym} 120 -40 0 0 {name=p11 lab=VRP}
C {lab_wire.sym} 100 -380 0 0 {name=p12 sig_type=std_logic lab=VRX[0]}
C {lab_wire.sym} 100 -280 0 0 {name=p13 sig_type=std_logic lab=VRX[1]}
C {lab_wire.sym} 240 -230 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {iopin.sym} 340 -500 2 1 {name=p19 lab=VCM}
C {iopin.sym} 480 -240 2 1 {name=p2 lab=VRY[1:0]}
C {iopin.sym} 480 -340 2 1 {name=p3 lab=VRX[1:0]}
C {iopin.sym} 210 -450 2 1 {name=p4 lab=VSS}
C {symbols/ppolyf_u_3k.sym} 510 -620 1 1 {name=RDC[3:0]
W=0.8e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 510 -580 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 580 -590 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 450 -600 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_3k.sym} 330 -620 1 1 {name=RDB[7:0]
W=2e-6
L=0.8e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 330 -580 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 400 -590 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 270 -600 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_3k.sym} 160 -630 1 1 {name=RDA[3:0]
W=0.8e-6
L=0.8e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 160 -590 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 230 -600 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 100 -610 2 0 {name=p22 sig_type=std_logic lab=VSS}
