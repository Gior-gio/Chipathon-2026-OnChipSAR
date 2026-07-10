v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 -60 300 -20 {lab=0}
N 300 -160 300 -120 {lab=CLK}
N 980 -60 980 -20 {lab=0}
N 980 -160 980 -120 {lab=VDD}
N 1080 -60 1080 -20 {lab=0}
N 1080 -160 1080 -120 {lab=VSS}
N 900 -60 900 -20 {lab=0}
N 900 -160 900 -120 {lab=Vcomp}
N 580 -60 580 -20 {lab=0}
N 580 -160 580 -120 {lab=SAMP}
N 260 -240 260 -220 {lab=VSS}
N 260 -460 260 -440 {lab=VDD}
N 120 -360 160 -360 {lab=CLK}
N 120 -340 160 -340 {lab=SAMP}
N 120 -320 160 -320 {lab=Vcomp}
N 360 -400 400 -400 {lab=SW0[8:0]}
N 360 -340 400 -340 {lab=B[9:0]}
N 360 -280 400 -280 {lab=SW1[8:0]}
C {designs/sar_adc/digital/logica_digital_TOP/xschem/logica_digital_TOP.sym} 280 -340 0 0 {name=xREG}
C {gnd.sym} 300 -20 0 0 {name=l1 lab=0}
C {vsource.sym} 980 -90 0 0 {name=V2 value=\{VDD\} savecurrent=false}
C {gnd.sym} 980 -20 0 0 {name=l2 lab=0}
C {vsource.sym} 1080 -90 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 1080 -20 0 0 {name=l3 lab=0}
C {vsource.sym} 900 -90 0 1 {name=VCOMP value="PULSE(0 \{VDD\} \{3.4*Tclk\} 0.1n 0.1n \{Ts/2\} \{Ts\})" savecurrent=false}
C {gnd.sym} 900 -20 0 1 {name=l5 lab=0}
C {lab_pin.sym} 980 -160 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1080 -160 2 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -160 0 0 {name=p47 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 900 -160 0 0 {name=p49 sig_type=std_logic lab=Vcomp
}
C {gnd.sym} 580 -20 0 0 {name=l4 lab=0}
C {lab_pin.sym} 580 -160 0 0 {name=p3 sig_type=std_logic lab=SAMP
}
C {lab_pin.sym} 260 -220 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -460 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 120 -360 0 0 {name=p4 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 120 -340 0 0 {name=p5 sig_type=std_logic lab=SAMP}
C {lab_pin.sym} 120 -320 0 0 {name=p6 sig_type=std_logic lab=Vcomp
}
C {lab_pin.sym} 400 -340 0 1 {name=p8 sig_type=std_logic lab=B[9:0]
}
C {devices/code_shown.sym} 830 -360 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 400 -400 0 1 {name=p9 sig_type=std_logic lab=SW0[8:0]
}
C {lab_pin.sym} 400 -280 0 1 {name=p7 sig_type=std_logic lab=SW1[8:0]
}
C {devices/vsource.sym} 300 -90 0 1 {name=VCLK value="PULSE(\{VDD\} 0 0 0.1n 0.1n \{Tclk/2\} \{Tclk\})"
}
C {devices/vsource.sym} 580 -90 0 1 {name=VSAM value="PULSE(0 \{VDD\} 0 0.1n 0.1n \{Tclk\} \{Ts\})"
}
C {code.sym} 642.5 -387.5 0 0 {name=CODE only_toplevel=false 
value="
* Input parameters
.param VDD = 3.3
.param Fs = 5Meg
.param Ts = 1/Fs
.param Tclk = 1/(Fs*12)

.control
save all

* Variables
let Fs = 5Meg
let tstep = 1/(Fs*12*100)
let tstop = 2/Fs


* Transient simulation
tran $&tstep $&tstop

let i_vdd = -i(V2)
let p_inst = -v(VDD)*i(V2)
** Plots
meas tran Iavg AVG i_vdd FROM=$&tstep TO=$&tstop
meas tran Pavg AVG p_inst FROM=$&tstep TO=$&tstop

*plot xREG.SAMPN xREG.SET

plot \\"sw0[8]\\" \\"sw0[7]\\" \\"sw0[6]\\" \\"sw1[8]\\"+4 \\"sw1[7]\\"+4 \\"sw1[6]\\"+4
.endc
"}
