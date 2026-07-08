v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -590 170 -550 170 {lab=Q}
N -1140 230 -1140 270 {lab=0}
N -1140 130 -1140 170 {lab=D}
N -1200 230 -1200 270 {lab=0}
N -1200 130 -1200 170 {lab=VDD}
N -1260 230 -1260 270 {lab=0}
N -1260 130 -1260 170 {lab=VSS}
N -1440 230 -1440 270 {lab=0}
N -1440 130 -1440 170 {lab=CLK}
N -640 170 -590 170 {lab=Q}
N -710 350 -710 390 {lab=VSS}
N -710 70 -710 110 {lab=VDD}
N -830 270 -800 270 {lab=CLK}
N -850 170 -800 170 {lab=D}
N -730 350 -730 390 {lab=RN}
N -1540 230 -1540 270 {lab=0}
N -1540 130 -1540 170 {lab=RN}
C {lab_pin.sym} -600 170 0 1 {name=p35 sig_type=std_logic lab=Q}
C {lab_pin.sym} -850 170 0 0 {name=p36 sig_type=std_logic lab=D
}
C {vsource.sym} -1140 200 0 0 {name=V1 value="PULSE (0 3.3 25n 1n 1n 200n 400n)" savecurrent=false}
C {gnd.sym} -1140 270 0 0 {name=l1 lab=0}
C {vsource.sym} -1200 200 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -1200 270 0 0 {name=l2 lab=0}
C {vsource.sym} -1260 200 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -1260 270 0 0 {name=l3 lab=0}
C {vsource.sym} -1440 200 0 0 {name=V5 value="PULSE (0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {gnd.sym} -1440 270 0 0 {name=l5 lab=0}
C {lab_pin.sym} -1200 130 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1260 130 2 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -1140 130 0 0 {name=p47 sig_type=std_logic lab=D
}
C {lab_pin.sym} -1440 130 0 0 {name=p49 sig_type=std_logic lab=CLK
}
C {devices/code_shown.sym} -1390 410 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -510 30 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

echo '==============TRAN measurements========='

** Simulations
tran 0.1n 2u

** Plots
setplot dc1
let clk = v(CLK)
**plot clk
let Reset=v(RN)
plot rn
let D = v(D)
plot D clk
let Q = v(Q)
plot Q 
plot QN
write FF_tb.raw
.endc
"}
C {lab_pin.sym} -710 390 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -710 70 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} -1540 200 0 0 {name=V4 value="PULSE (0 3.3 0 1n 1n 1000n 2000n)" savecurrent=false}
C {gnd.sym} -1540 270 0 0 {name=l4 lab=0}
C {lab_pin.sym} -1540 130 0 0 {name=p3 sig_type=std_logic lab=RN
}
C {lab_pin.sym} -730 390 0 0 {name=p4 sig_type=std_logic lab=RN
}
C {noconn.sym} -550 170 2 0 {name=l7}
C {lab_pin.sym} -830 270 0 0 {name=p6 sig_type=std_logic lab=CLK
}
C {sar_adc/digital/flip_flop/xschem/FF_D.sym} -710 230 0 0 {name=x1}
