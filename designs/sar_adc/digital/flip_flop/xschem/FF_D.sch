v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 0 140 0 {lab=#net1}
N -80 -60 -80 -30 {lab=VDD}
N -40 -60 -40 -30 {lab=VSS}
N -0 -100 0 -60 {lab=CLK}
N -0 40 -0 80 {lab=#net2}
N 120 -40 160 -40 {lab=RN}
N 140 0 160 0 {lab=#net1}
N 260 -140 260 -100 {lab=VDD}
N 260 60 260 100 {lab=VSS}
N 120 -0 120 180 {lab=#net1}
N 120 270 170 270 {lab=#net1}
N 120 230 120 270 {lab=#net1}
N 120 180 120 230 {lab=#net1}
N 380 -20 580 -20 {lab=#net3}
N 580 -20 580 60 {lab=#net3}
N 330 270 580 270 {lab=#net4}
N 580 260 580 270 {lab=#net4}
N 460 160 500 160 {lab=VSS}
N 660 160 700 160 {lab=VDD}
N 580 -20 640 -20 {lab=#net3}
N 720 20 720 60 {lab=#net5}
N 720 -120 720 -80 {lab=CLK}
N 680 -90 680 -50 {lab=VSS}
N 640 -90 640 -50 {lab=VDD}
N 250 170 250 210 {lab=CLK}
N 210 200 210 240 {lab=VSS}
N 170 200 170 240 {lab=VDD}
N 250 310 250 350 {lab=#net6}
N 800 -20 880 -20 {lab=#net7}
N 980 60 980 100 {lab=VSS}
N 980 -140 980 -100 {lab=VDD}
N 980 270 1050 270 {lab=#net7}
N 1080 -20 1200 -20 {lab=#net8}
N 1160 -60 1200 -60 {lab=RN}
N 1050 270 1080 270 {lab=#net7}
N 1080 200 1080 240 {lab=VDD}
N 1120 200 1120 240 {lab=VSS}
N 1160 170 1160 210 {lab=CLK}
N 1160 310 1160 350 {lab=#net9}
N 1420 -40 1520 -40 {lab=#net10}
N 1470 -40 1470 270 {lab=#net10}
N 1240 270 1470 270 {lab=#net10}
N 840 -20 840 270 {lab=#net7}
N 840 270 980 270 {lab=#net7}
N 1300 40 1300 80 {lab=VSS}
N 1300 -160 1300 -120 {lab=VDD}
N 1620 -160 1620 -120 {lab=VDD}
N 1620 40 1620 80 {lab=VSS}
N 1720 -40 1760 -40 {lab=Q}
N -140 -0 -80 0 {lab=D}
N 0 -320 40 -320 {lab=VDD}
N 0 -280 40 -280 {lab=VSS}
N 180 -320 220 -320 {lab=CLK}
N 180 -280 220 -280 {lab=CLKN}
N 360 -320 400 -320 {lab=D}
N 360 -280 400 -280 {lab=Q}
N 180 -240 220 -240 {lab=RN}
C {Chipathon_library/TG.sym} 0 20 0 0 {name=x1}
C {Chipathon_library/NAND.sym} 260 -20 0 0 {name=x2}
C {Chipathon_library/Inverter.sym} 580 160 1 0 {name=x3}
C {Chipathon_library/TG.sym} 250 290 0 0 {name=x4}
C {Chipathon_library/Inverter.sym} 980 -20 0 0 {name=x5}
C {Chipathon_library/TG.sym} 720 0 0 0 {name=x6}
C {Chipathon_library/TG.sym} 1160 290 0 0 {name=x7}
C {Chipathon_library/NAND.sym} 1300 -40 0 0 {name=x8}
C {Chipathon_library/Inverter.sym} 1620 -40 0 0 {name=x9}
C {iopin.sym} 40 -320 0 0 {name=p1 lab=VDD}
C {lab_pin.sym} 0 -320 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {iopin.sym} 40 -280 0 0 {name=p3 lab=VSS}
C {lab_pin.sym} 0 -280 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {iopin.sym} 220 -320 0 0 {name=p5 lab=CLK
}
C {lab_pin.sym} 180 -320 0 0 {name=p6 sig_type=std_logic lab=CLK
}
C {iopin.sym} 220 -280 0 0 {name=p7 lab=CLKN
}
C {lab_pin.sym} 180 -280 0 0 {name=p8 sig_type=std_logic lab=CLKN
}
C {iopin.sym} 400 -320 0 0 {name=p9 lab=D}
C {lab_pin.sym} 360 -320 0 0 {name=p10 sig_type=std_logic lab=D
}
C {iopin.sym} 400 -280 0 0 {name=p11 lab=Q}
C {lab_pin.sym} 360 -280 0 0 {name=p12 sig_type=std_logic lab=Q}
C {iopin.sym} 220 -240 0 0 {name=p13 lab=RN}
C {lab_pin.sym} 180 -240 0 0 {name=p14 sig_type=std_logic lab=RN}
C {lab_pin.sym} 260 -140 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 -90 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 -60 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 170 200 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1080 200 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 700 160 0 1 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 980 -140 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1300 -160 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1620 -160 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -40 -60 3 1 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 680 -90 3 1 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 210 200 3 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1120 200 3 1 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 160 2 1 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 100 2 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 980 100 2 1 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 80 2 1 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1620 80 2 1 {name=p32 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -40 0 0 {name=p33 sig_type=std_logic lab=RN}
C {lab_pin.sym} 1160 -60 0 0 {name=p34 sig_type=std_logic lab=RN}
C {lab_pin.sym} 1760 -40 0 1 {name=p35 sig_type=std_logic lab=Q}
C {lab_pin.sym} -140 0 0 0 {name=p36 sig_type=std_logic lab=D
}
C {lab_pin.sym} 0 -100 3 1 {name=p37 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 720 -120 3 1 {name=p38 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 250 170 3 1 {name=p39 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 1160 170 3 1 {name=p40 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 0 80 3 0 {name=p41 sig_type=std_logic lab=CLKN
}
C {lab_pin.sym} 250 350 3 0 {name=p42 sig_type=std_logic lab=CLKN
}
C {lab_pin.sym} 1160 350 3 0 {name=p43 sig_type=std_logic lab=CLKN
}
C {lab_pin.sym} 720 60 3 0 {name=p44 sig_type=std_logic lab=CLKN
}
