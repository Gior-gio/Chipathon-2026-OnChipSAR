v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -180 -10 -180 30 {lab=0}
N -180 -110 -180 -70 {lab=CLK}
N 410 0 410 40 {lab=0}
N 410 -100 410 -60 {lab=VDD}
N 500 0 500 40 {lab=0}
N 500 -100 500 -60 {lab=VSS}
N 210 0 210 40 {lab=0}
N 210 -100 210 -60 {lab=Vcomp}
N 40 0 40 40 {lab=0}
N 40 -100 40 -60 {lab=SAMP}
N 340 -200 340 -180 {lab=VSS}
N 340 -360 340 -340 {lab=VDD}
N 200 -290 240 -290 {lab=CLK}
N 200 -270 240 -270 {lab=SAMP}
N 200 -250 240 -250 {lab=Vcomp}
N 440 -280 480 -280 {lab=BN[7:0]}
N 440 -260 480 -260 {lab=B[7:0]}
C {sar_adc/digital/logica_digital_TOP/xschem/logica_digital_TOP.sym} 360 -270 0 0 {name=x1}
C {vsource.sym} -180 -40 0 0 {name=V1 value="PULSE (0 3.3 60n 1n 1n 44n 90n)" savecurrent=false}
C {gnd.sym} -180 30 0 0 {name=l1 lab=0}
C {vsource.sym} 410 -30 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 410 40 0 0 {name=l2 lab=0}
C {vsource.sym} 500 -30 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 500 40 0 0 {name=l3 lab=0}
C {vsource.sym} 210 -30 0 0 {name=V5 value="PULSE (0 3.3 105n 1n 1n 44n 90n)" savecurrent=false}
C {gnd.sym} 210 40 0 0 {name=l5 lab=0}
C {lab_pin.sym} 410 -100 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 500 -100 2 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -180 -110 0 0 {name=p47 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 210 -100 0 0 {name=p49 sig_type=std_logic lab=Vcomp
}
C {vsource.sym} 40 -30 0 0 {name=V4 value="PULSE (0 3.3 0 1n 1n 50n 9999u)" savecurrent=false}
C {gnd.sym} 40 40 0 0 {name=l4 lab=0}
C {lab_pin.sym} 40 -100 0 0 {name=p3 sig_type=std_logic lab=SAMP
}
C {lab_pin.sym} 340 -180 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -360 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -290 0 0 {name=p4 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 200 -270 0 0 {name=p5 sig_type=std_logic lab=SAMP}
C {lab_pin.sym} 200 -250 0 0 {name=p6 sig_type=std_logic lab=Vcomp
}
C {lab_pin.sym} 465 -280 1 0 {name=p7 sig_type=std_logic lab=BN[7:0]
}
C {lab_pin.sym} 460 -260 3 0 {name=p8 sig_type=std_logic lab=B[7:0]
}
C {devices/code_shown.sym} 560 -520 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

echo '==============TRAN measurements========='

** Simulations
tran 0.1n 600n

** Plots
let clk = v(CLK)
plot clk Vcomp
plot SAMP
plot B[7] 
plot B6
plot B5
plot B4
plot B3
plot B2
plot B1
plot B0
write FF_tb.raw
.endc
"}
C {devices/code_shown.sym} 560 -100 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {noconn.sym} 480 -260 2 0 {name=l6}
C {noconn.sym} 480 -280 2 0 {name=l7}
