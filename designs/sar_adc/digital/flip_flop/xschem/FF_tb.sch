v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -180 0 -120 0 {lab=#net1}
N -340 -60 -340 -30 {lab=VDD}
N -300 -60 -300 -30 {lab=VSS}
N -260 -100 -260 -60 {lab=CLK}
N -260 40 -260 80 {lab=CLKN}
N 60 -120 60 -80 {lab=VDD}
N 60 80 60 120 {lab=VSS}
N -140 20 -140 200 {lab=#net1}
N -140 340 -90 340 {lab=#net1}
N -140 300 -140 340 {lab=#net1}
N -140 250 -140 300 {lab=#net1}
N 210 340 460 340 {lab=#net2}
N 460 330 460 340 {lab=#net2}
N 460 0 520 0 {lab=#net2}
N 600 40 600 80 {lab=CLKN2}
N 600 -100 600 -60 {lab=CLK2}
N 560 -70 560 -30 {lab=VSS}
N 520 -70 520 -30 {lab=VDD}
N 130 240 130 280 {lab=CLK2}
N 90 270 90 310 {lab=VSS}
N 50 270 50 310 {lab=VDD}
N 130 380 130 420 {lab=CLKN2}
N 680 0 760 0 {lab=#net3}
N 1180 80 1180 120 {lab=VSS}
N 1180 -120 1180 -80 {lab=VDD}
N 860 340 930 340 {lab=#net3}
N 960 0 1080 0 {lab=#net4}
N 930 340 960 340 {lab=#net3}
N 960 270 960 310 {lab=VDD}
N 1000 270 1000 310 {lab=VSS}
N 1040 240 1040 280 {lab=CLK}
N 1040 380 1040 420 {lab=CLKN}
N 1300 0 1400 0 {lab=Q}
N 1120 340 1350 340 {lab=Q}
N 720 0 720 290 {lab=#net3}
N 720 340 860 340 {lab=#net3}
N 1450 0 1490 0 {lab=Q}
N -400 0 -340 0 {lab=D}
N -440 -180 -440 -140 {lab=0}
N -440 -280 -440 -240 {lab=D}
N -600 -180 -600 -140 {lab=0}
N -600 -280 -600 -240 {lab=VDD}
N -760 -180 -760 -140 {lab=0}
N -760 -280 -760 -240 {lab=VSS}
N -1000 -180 -1000 -140 {lab=0}
N -1000 -280 -1000 -240 {lab=CLK}
N 460 0 460 280 {lab=#net2}
N 330 -120 330 -80 {lab=VDD}
N 330 80 330 120 {lab=VSS}
N 1280 0 1300 0 {lab=Q}
N -140 200 -140 250 {lab=#net1}
N 460 280 460 330 {lab=#net2}
N 720 290 720 340 {lab=#net3}
N 1350 290 1350 340 {lab=Q}
N -120 0 -100 0 {lab=#net1}
N -140 0 -140 20 {lab=#net1}
N 1350 0 1350 290 {lab=Q}
N 860 -120 860 -80 {lab=VDD}
N 860 80 860 120 {lab=VSS}
N -900 430 -860 430 {lab=CLK2}
N -660 430 -620 430 {lab=CLKN2}
N -900 760 -860 760 {lab=CLK}
N -660 760 -620 760 {lab=CLKN}
N -760 510 -760 550 {lab=VSS}
N -760 840 -760 880 {lab=VSS}
N -760 310 -760 350 {lab=VDD}
N -760 640 -760 680 {lab=VDD}
N -900 120 -860 120 {lab=CLK}
N -660 120 -620 120 {lab=CLK2}
N -760 200 -760 240 {lab=VSS}
N -760 0 -760 40 {lab=VDD}
N 1400 0 1450 0 {lab=Q}
N -100 -0 -40 -0 {lab=#net1}
N -90 340 50 340 {lab=#net1}
N 160 -0 230 -0 {lab=#net5}
N 430 -0 460 -0 {lab=#net2}
C {Chipathon_library/TG.sym} -260 20 0 0 {name=x1}
C {Chipathon_library/TG.sym} 130 360 0 0 {name=x4}
C {Chipathon_library/Inverter.sym} 860 0 0 0 {name=x5}
C {Chipathon_library/TG.sym} 600 20 0 0 {name=x6}
C {Chipathon_library/TG.sym} 1040 360 0 0 {name=x7}
C {lab_pin.sym} 60 -120 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -70 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -340 -60 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 50 270 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 960 270 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1180 -120 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -300 -60 3 1 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -70 3 1 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 270 3 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 270 3 1 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 120 2 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1180 120 2 1 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1490 0 0 1 {name=p35 sig_type=std_logic lab=Q}
C {lab_pin.sym} -400 0 0 0 {name=p36 sig_type=std_logic lab=D
}
C {lab_pin.sym} -260 -100 3 1 {name=p37 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 1040 240 3 1 {name=p40 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} -260 80 3 0 {name=p41 sig_type=std_logic lab=CLKN
}
C {lab_pin.sym} 1040 420 3 0 {name=p43 sig_type=std_logic lab=CLKN
}
C {vsource.sym} -440 -210 0 0 {name=V1 value="PULSE (0 3.3 0 20p 20p 100n 500n 0)" savecurrent=false}
C {gnd.sym} -440 -140 0 0 {name=l1 lab=0}
C {vsource.sym} -600 -210 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -600 -140 0 0 {name=l2 lab=0}
C {vsource.sym} -760 -210 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} -760 -140 0 0 {name=l3 lab=0}
C {vsource.sym} -1000 -210 0 0 {name=V5 value="PULSE (3.3 0 0 20p 20p 50n 100n 0)" savecurrent=false}
C {gnd.sym} -1000 -140 0 0 {name=l5 lab=0}
C {lab_pin.sym} -600 -280 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -760 -280 2 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -440 -280 0 0 {name=p47 sig_type=std_logic lab=D
}
C {lab_pin.sym} -1000 -280 0 0 {name=p49 sig_type=std_logic lab=CLK
}
C {devices/code_shown.sym} 1720 50 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 1700 -470 0 0 {name=NGSPICE only_toplevel=true
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

write FF_tb.raw
.endc
"}
C {lab_pin.sym} 600 -100 1 0 {name=p1 sig_type=std_logic lab=CLK2
}
C {lab_pin.sym} 130 240 1 0 {name=p2 sig_type=std_logic lab=CLK2
}
C {lab_pin.sym} 130 420 1 1 {name=p3 sig_type=std_logic lab=CLKN2
}
C {lab_pin.sym} 600 80 1 1 {name=p4 sig_type=std_logic lab=CLKN2
}
C {Chipathon_library/Inverter.sym} 60 0 0 0 {name=x2}
C {Chipathon_library/Inverter.sym} 330 0 0 0 {name=x3}
C {lab_pin.sym} 330 -120 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 120 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {Chipathon_library/Inverter.sym} 1180 0 0 0 {name=x8}
C {lab_pin.sym} 860 -120 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 860 120 2 1 {name=p8 sig_type=std_logic lab=VSS}
C {Chipathon_library/Inverter.sym} -760 430 0 0 {name=x9}
C {Chipathon_library/Inverter.sym} -760 760 0 0 {name=x10}
C {lab_pin.sym} -760 550 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -760 880 2 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -760 310 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -760 640 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -900 430 0 0 {name=p13 sig_type=std_logic lab=CLK2

}
C {lab_pin.sym} -900 760 0 0 {name=p14 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} -620 760 0 1 {name=p20 sig_type=std_logic lab=CLKN
}
C {lab_pin.sym} -620 430 0 1 {name=p22 sig_type=std_logic lab=CLKN2
}
C {Chipathon_library/Inverter.sym} -760 120 0 0 {name=x11}
C {lab_pin.sym} -760 240 2 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -760 0 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -900 120 0 0 {name=p31 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} -620 120 0 1 {name=p32 sig_type=std_logic lab=CLK2
}
