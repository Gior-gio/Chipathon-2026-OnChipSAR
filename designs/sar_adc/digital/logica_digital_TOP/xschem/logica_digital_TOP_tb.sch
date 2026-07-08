v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -260 -20 -260 20 {lab=0}
N -260 -120 -260 -80 {lab=CLK}
N 460 -20 460 20 {lab=0}
N 460 -120 460 -80 {lab=VDD}
N 560 -20 560 20 {lab=0}
N 560 -120 560 -80 {lab=VSS}
N 220 -20 220 20 {lab=0}
N 220 -120 220 -80 {lab=Vcomp}
N -20 -20 -20 20 {lab=0}
N -20 -120 -20 -80 {lab=SAMP}
N -100 -240 -100 -220 {lab=VSS}
N -100 -460 -100 -440 {lab=VDD}
N -240 -360 -200 -360 {lab=CLK}
N -240 -340 -200 -340 {lab=SAMP}
N -240 -320 -200 -320 {lab=Vcomp}
N 0 -400 40 -400 {lab=SW08,SW07,SW0[6:0]}
N 0 -340 40 -340 {lab=B9,B8,B[7:0]}
N 0 -280 40 -280 {lab=SW18,SW17,SW1[6:0]}
C {vsource.sym} -260 -50 0 0 {name=V1 value="PULSE (0 3.3 60n 1n 1n 44n 90n)" savecurrent=false}
C {gnd.sym} -260 20 0 0 {name=l1 lab=0}
C {vsource.sym} 460 -50 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 460 20 0 0 {name=l2 lab=0}
C {vsource.sym} 560 -50 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 560 20 0 0 {name=l3 lab=0}
C {vsource.sym} 220 -50 0 0 {name=V5 value="PULSE (0 3.3 105n 1n 1n 44n 90n)" savecurrent=false}
C {gnd.sym} 220 20 0 0 {name=l5 lab=0}
C {lab_pin.sym} 460 -120 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 560 -120 2 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -260 -120 0 0 {name=p47 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 220 -120 0 0 {name=p49 sig_type=std_logic lab=Vcomp
}
C {vsource.sym} -20 -50 0 0 {name=V4 value="PULSE (0 3.3 0 1n 1n 50n 9999u)" savecurrent=false}
C {gnd.sym} -20 20 0 0 {name=l4 lab=0}
C {lab_pin.sym} -20 -120 0 0 {name=p3 sig_type=std_logic lab=SAMP
}
C {lab_pin.sym} -100 -220 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 -460 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -240 -360 0 0 {name=p4 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} -240 -340 0 0 {name=p5 sig_type=std_logic lab=SAMP}
C {lab_pin.sym} -240 -320 0 0 {name=p6 sig_type=std_logic lab=Vcomp
}
C {lab_pin.sym} 40 -340 0 1 {name=p8 sig_type=std_logic lab=B9,B8,B[7:0]
}
C {devices/code_shown.sym} 350 -630 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

echo '==============TRAN measurements========='

** Simulations
tran 0.1n 600n

let p_inst = -v(VDD)*i(V2)
let i_vdd = -i(V2)

meas tran Pavg AVG p_inst

meas tran Iavg AVG i_vdd

** Plots
plot xREG.SAMPN xREG.SET
plot B9 B8
plot SW08 SW07
plot SW18 SW17
print Pavg
.endc
"}
C {devices/code_shown.sym} 620 -120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 40 -400 0 1 {name=p9 sig_type=std_logic lab=SW08,SW07,SW0[6:0]
}
C {lab_pin.sym} 40 -280 0 1 {name=p7 sig_type=std_logic lab=SW18,SW17,SW1[6:0]
}
C {designs/sar_adc/digital/logica_digital_TOP/xschem/logica_digital_TOP.sym} -80 -340 0 0 {name=x1}
