v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 40 -80 400 -80 400 0 40 0 40 -80 {}
P 4 5 720 -420 860 -420 860 -240 720 -240 720 -420 {}
P 4 5 -830 -560 -190 -560 -190 -370 -830 -370 -830 -560 {}
T {EXTERNAL
REFERENCE
VOLTAGES} 180 -60 0 0 0.25 0.25 {}
T {SCALED 
REFERENCE 
VOLTAGES} 750 -360 0 0 0.25 0.25 {}
T {REFERENCE COMMON MODE} 130 -520 0 0 0.25 0.25 {}
T {DUMMYS DEVICES} -580 -550 0 0 0.25 0.25 {}
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
N -310 -430 -270 -430 {lab=VSS}
N -270 -430 -270 -400 {lab=VSS}
N -340 -410 -340 -390 {lab=VSS}
N -400 -430 -370 -430 {lab=VSS}
N -400 -430 -400 -410 {lab=VSS}
N -490 -430 -450 -430 {lab=VSS}
N -450 -430 -450 -400 {lab=VSS}
N -520 -410 -520 -390 {lab=VSS}
N -580 -430 -550 -430 {lab=VSS}
N -580 -430 -580 -410 {lab=VSS}
N -660 -440 -620 -440 {lab=VSS}
N -620 -440 -620 -410 {lab=VSS}
N -690 -420 -690 -400 {lab=VSS}
N -750 -440 -720 -440 {lab=VSS}
N -750 -440 -750 -420 {lab=VSS}
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
C {symbols/ppolyf_u_3k.sym} 320 -130 0 0 {name=RN3
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
C {iopin.sym} 740 -280 2 1 {name=p2 lab=VRY[1:0]}
C {iopin.sym} 740 -380 2 1 {name=p3 lab=VRX[1:0]}
C {iopin.sym} 210 -450 2 1 {name=p4 lab=VSS}
C {symbols/ppolyf_u_3k.sym} -340 -430 1 1 {name=RD1
W=0.8e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=4}
C {lab_wire.sym} -340 -390 2 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -270 -400 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -400 -410 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_3k.sym} -520 -430 1 1 {name=RD2
W=2e-6
L=0.8e-6
model=ppolyf_u_1k
spiceprefix=X
m=8}
C {lab_wire.sym} -520 -390 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -450 -400 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -580 -410 2 0 {name=p17 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_3k.sym} -690 -440 1 1 {name=RD3
W=0.8e-6
L=0.8e-6
model=ppolyf_u_1k
spiceprefix=X
m=4}
C {lab_wire.sym} -690 -400 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -620 -410 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -750 -420 2 0 {name=p22 sig_type=std_logic lab=VSS}
