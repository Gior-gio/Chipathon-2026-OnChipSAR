v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1370 -610 1370 -590 {lab=#net1}
N 1250 -610 1370 -610 {lab=#net1}
N 1250 -610 1250 -500 {lab=#net1}
N 1250 -380 1250 -340 {lab=GND}
N 1370 -530 1370 -510 {lab=GND}
N 1070 -440 1200 -440 {lab=Clkk}
N 1070 -440 1070 -420 {lab=Clkk}
N 1070 -360 1070 -340 {lab=GND}
N 1140 -470 1200 -470 {lab=Vinp}
N 1140 -410 1200 -410 {lab=Vinn}
N 790 -410 950 -410 {lab=#net2}
N 870 -410 870 -350 {lab=#net2}
N 870 -290 870 -260 {lab=GND}
N 790 -450 790 -410 {lab=#net2}
N 950 -450 950 -410 {lab=#net2}
N 790 -550 790 -510 {lab=Vinp}
N 950 -550 950 -510 {lab=Vinn}
N 1310 -460 1360 -460 {lab=OUTP}
N 1310 -420 1360 -420 {lab=OUTN}
C {strongARM.sym} 640 -320 0 0 {name=x1}
C {vsource.sym} 1370 -560 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1250 -340 0 0 {name=l1 lab=GND}
C {gnd.sym} 1370 -510 0 0 {name=l2 lab=GND}
C {vsource.sym} 1070 -390 0 0 {name=VCLK value="pulse(3.3 0 1n 100p 100p 25n 50n)" savecurrent=false}
C {gnd.sym} 1070 -340 0 0 {name=l3 lab=GND}
C {vsource.sym} 870 -320 0 0 {name=VCM value=0 savecurrent=false}
C {gnd.sym} 870 -260 0 0 {name=l4 lab=GND}
C {vsource.sym} 790 -480 0 0 {name=VINP value=1.7 savecurrent=false}
C {vsource.sym} 950 -480 0 0 {name=VINN value=1.6 savecurrent=false}
C {lab_wire.sym} 790 -550 0 0 {name=p1 sig_type=std_logic lab=Vinp}
C {lab_wire.sym} 950 -550 0 0 {name=p2 sig_type=std_logic lab=Vinn}
C {lab_wire.sym} 1140 -470 0 0 {name=p3 sig_type=std_logic lab=Vinp}
C {lab_wire.sym} 1140 -410 0 0 {name=p4 sig_type=std_logic lab=Vinn}
C {noconn.sym} 1360 -420 0 1 {name=l5}
C {noconn.sym} 1360 -460 0 1 {name=l6}
C {lab_wire.sym} 1350 -460 0 0 {name=p5 sig_type=std_logic lab=OUTP}
C {lab_wire.sym} 1350 -420 0 0 {name=p6 sig_type=std_logic lab=OUTN}
C {devices/code_shown.sym} 280 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 260 -1010 0 0 {name=s1 only_toplevel=false value="

.tran 5p 40n
.measure tran P_avg AVG par('-3.3*i(V1)') FROM=0 TO=40n
.end
"}
C {lab_wire.sym} 1120 -440 0 0 {name=p7 sig_type=std_logic lab=Clkk}
