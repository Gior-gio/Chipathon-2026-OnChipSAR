v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -590 170 -550 170 {lab=Q}
N -440 -180 -440 -140 {lab=0}
N -440 -280 -440 -240 {lab=D}
N -600 -180 -600 -140 {lab=0}
N -600 -280 -600 -240 {lab=VDD}
N -760 -180 -760 -140 {lab=0}
N -760 -280 -760 -240 {lab=VSS}
N -1000 -180 -1000 -140 {lab=0}
N -1000 -280 -1000 -240 {lab=CLK}
N -640 170 -590 170 {lab=Q}
N -710 350 -710 390 {lab=VSS}
N -710 70 -710 110 {lab=VDD}
N -830 270 -800 270 {lab=CLK}
N -850 170 -800 170 {lab=D}
N -730 350 -730 390 {lab=RN}
N -1310 -190 -1310 -150 {lab=0}
N -1310 -290 -1310 -250 {lab=RN}
N 280 -860 280 -820 {lab=in}
N 280 -760 280 -740 {lab=0}
N 280 -860 320 -860 {lab=in}
C {lab_pin.sym} -600 170 0 1 {name=p35 sig_type=std_logic lab=Q}
C {lab_pin.sym} -850 170 0 0 {name=p36 sig_type=std_logic lab=D
}
C {vsource.sym} -440 -210 0 0 {name=V1 value="PULSE (0 3.3 20n 1n 1n 150n 200n)" savecurrent=false}
C {gnd.sym} -440 -140 0 0 {name=l1 lab=0}
C {vsource.sym} -600 -210 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -600 -140 0 0 {name=l2 lab=0}
C {vsource.sym} -760 -210 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -760 -140 0 0 {name=l3 lab=0}
C {vsource.sym} -1000 -210 0 0 {name=V5 value="PULSE (0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {gnd.sym} -1000 -140 0 0 {name=l5 lab=0}
C {lab_pin.sym} -600 -280 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -760 -280 2 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -440 -280 0 0 {name=p47 sig_type=std_logic lab=D
}
C {lab_pin.sym} -1000 -280 0 0 {name=p49 sig_type=std_logic lab=CLK
}
C {devices/code_shown.sym} -40 10 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 60 -610 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

echo '==============TRAN measurements========='

** Simulations
tran 0.1n 1u

** Plots
setplot dc1
let clk = v(CLK)
plot clk
let clkn = v(CLKN)
plot clkn
let rn = v(RN)
plot rn
let vin = v(D)
plot vin
let vout = v(Q)
plot vout
let QN= v(X1.QN)
plot QN
write FF_tb.raw
.endc
"}
C {sar_adc/digital/flip_flop/xschem/FF_D.sym} -710 230 0 0 {name=x1}
C {lab_pin.sym} -710 390 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -710 70 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} -1310 -220 0 0 {name=V4 value="PULSE (3.3 3.3 100p 100p 8n 200n)" savecurrent=false}
C {gnd.sym} -1310 -150 0 0 {name=l4 lab=0}
C {lab_pin.sym} -1310 -290 0 0 {name=p3 sig_type=std_logic lab=RN
}
C {lab_pin.sym} -730 390 0 0 {name=p4 sig_type=std_logic lab=RN
}
C {vsource.sym} 280 -790 0 0 {name=VIN value="0" savecurrent=false}
C {lab_pin.sym} 320 -860 0 0 {name=p5 sig_type=std_logic lab=in}
C {gnd.sym} 280 -740 0 0 {name=l6 lab=0}
C {noconn.sym} -550 170 2 0 {name=l7}
C {lab_pin.sym} -830 270 0 0 {name=p6 sig_type=std_logic lab=CLK
}
