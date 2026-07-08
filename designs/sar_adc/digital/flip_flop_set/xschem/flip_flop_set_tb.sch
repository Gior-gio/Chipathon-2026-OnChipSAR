v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1050 -550 1090 -550 {lab=Q}
N 500 -490 500 -450 {lab=0}
N 500 -590 500 -550 {lab=D}
N 440 -490 440 -450 {lab=0}
N 440 -590 440 -550 {lab=VDD}
N 380 -490 380 -450 {lab=0}
N 380 -590 380 -550 {lab=VSS}
N 200 -490 200 -450 {lab=0}
N 200 -590 200 -550 {lab=CLK}
N 1000 -550 1050 -550 {lab=Q}
N 930 -370 930 -330 {lab=VSS}
N 930 -650 930 -610 {lab=VDD}
N 810 -450 840 -450 {lab=CLK}
N 790 -550 840 -550 {lab=D}
N 910 -370 910 -330 {lab=RN}
N 100 -490 100 -450 {lab=0}
N 100 -590 100 -550 {lab=RN}
N 1000 -430 1100 -430 {lab=QN}
N 910 -650 910 -610 {lab=SN}
N -130 -490 -130 -450 {lab=0}
N -130 -590 -130 -550 {lab=SN}
C {lab_pin.sym} 1040 -550 0 1 {name=p35 sig_type=std_logic lab=Q}
C {lab_pin.sym} 790 -550 0 0 {name=p36 sig_type=std_logic lab=D
}
C {vsource.sym} 500 -520 0 0 {name=V1 value="PULSE (0 3.3 25n 1n 1n 200n 400n)" savecurrent=false}
C {gnd.sym} 500 -450 0 0 {name=l1 lab=0}
C {vsource.sym} 440 -520 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 440 -450 0 0 {name=l2 lab=0}
C {vsource.sym} 380 -520 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 380 -450 0 0 {name=l3 lab=0}
C {vsource.sym} 200 -520 0 0 {name=V5 value="PULSE (0 3.3 0 1n 1n 50n 100n)" savecurrent=false}
C {gnd.sym} 200 -450 0 0 {name=l5 lab=0}
C {lab_pin.sym} 440 -590 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 -590 2 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 500 -590 0 0 {name=p47 sig_type=std_logic lab=D
}
C {lab_pin.sym} 200 -590 0 0 {name=p49 sig_type=std_logic lab=CLK
}
C {devices/code_shown.sym} 250 -310 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1130 -670 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

echo '==============TRAN measurements========='

** Simulations
tran 0.1n 4u

** Plots
setplot dc1
let clk = v(CLK)
**plot clk
let reset=v(RN)
plot reset SN
let D = v(D)
plot D clk
let Q = v(Q)
plot Q 
plot QN

write FF_tb.raw
.endc
"}
C {lab_pin.sym} 930 -330 0 1 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 930 -650 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} 100 -520 0 0 {name=V4 value="PULSE (3.3 3.3 0 1n 1n 1000n 2000n)" savecurrent=false}
C {gnd.sym} 100 -450 0 0 {name=l4 lab=0}
C {lab_pin.sym} 100 -590 0 0 {name=p3 sig_type=std_logic lab=RN
}
C {lab_pin.sym} 910 -330 0 0 {name=p4 sig_type=std_logic lab=RN
}
C {noconn.sym} 1090 -550 2 0 {name=l7}
C {lab_pin.sym} 810 -450 0 0 {name=p6 sig_type=std_logic lab=CLK
}
C {noconn.sym} 1100 -430 2 0 {name=l6}
C {lab_pin.sym} 1050 -430 0 1 {name=p5 sig_type=std_logic lab=QN}
C {lab_pin.sym} 910 -650 0 0 {name=p7 sig_type=std_logic lab=SN}
C {vsource.sym} -130 -520 0 0 {name=V6 value="PULSE (0 3.3 0 1n 1n 1000n 2000n)" savecurrent=false}
C {gnd.sym} -130 -450 0 0 {name=l8 lab=0}
C {lab_pin.sym} -130 -590 0 0 {name=p8 sig_type=std_logic lab=SN
}
C {sar_adc/digital/flip_flop_set/xschem/flip_flop_set.sym} 750 -330 0 0 {name=x1}
