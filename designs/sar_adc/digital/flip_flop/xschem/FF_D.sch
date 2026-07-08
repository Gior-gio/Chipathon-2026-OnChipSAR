v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 0 140 0 {lab=tg1}
N -80 -60 -80 -30 {lab=VDD}
N -40 -60 -40 -30 {lab=VSS}
N -0 -100 0 -60 {lab=CLKN}
N -0 40 -0 80 {lab=CLK}
N 120 -40 160 -40 {lab=RN}
N 140 0 160 0 {lab=tg1}
N 260 -140 260 -100 {lab=VDD}
N 260 60 260 100 {lab=VSS}
N 120 -0 120 180 {lab=tg1}
N 120 230 120 270 {lab=tg1}
N 120 180 120 230 {lab=tg1}
N 500 60 500 100 {lab=VSS}
N 500 -140 500 -100 {lab=VDD}
N 580 -20 640 -20 {lab=#net1}
N 720 20 720 60 {lab=CLKN}
N 720 -120 720 -80 {lab=CLK2}
N 680 -90 680 -50 {lab=VSS}
N 640 -90 640 -50 {lab=VDD}
N 330 170 330 210 {lab=CLK2}
N 290 200 290 240 {lab=VSS}
N 250 200 250 240 {lab=VDD}
N 330 310 330 350 {lab=CLKN}
N 800 -20 880 -20 {lab=#net2}
N 980 60 980 100 {lab=VSS}
N 980 -140 980 -100 {lab=VDD}
N 1080 -20 1200 -20 {lab=#net3}
N 1160 -60 1200 -60 {lab=RN}
N 1060 200 1060 240 {lab=VDD}
N 1100 200 1100 240 {lab=VSS}
N 1140 170 1140 210 {lab=CLKN}
N 1140 310 1140 350 {lab=CLK}
N 1470 -40 1470 270 {lab=Q}
N 840 -20 840 270 {lab=#net2}
N 840 270 980 270 {lab=#net2}
N 1300 40 1300 80 {lab=VSS}
N 1300 -160 1300 -120 {lab=VDD}
N -140 -0 -80 0 {lab=D}
N 500 -100 500 -90 {lab=VDD}
N 500 50 500 60 {lab=VSS}
N 880 -20 900 -20 {lab=#net2}
N 980 50 980 60 {lab=VSS}
N 1060 -20 1080 -20 {lab=#net3}
N 980 -100 980 -90 {lab=VDD}
N -460 -160 -460 -120 {lab=VDD}
N -460 20 -460 60 {lab=VSS}
N -460 280 -460 310 {lab=VSS}
N -460 110 -460 140 {lab=VDD}
N -380 210 -330 210 {lab=CLKN}
N -580 210 -540 210 {lab=CLK}
N -580 -50 -540 -50 {lab=CLK}
N -380 -50 -340 -50 {lab=CLK2}
N 380 -20 420 -20 {lab=nand1}
N 580 270 610 270 {lab=#net1}
N 610 -20 610 270 {lab=#net1}
N 410 270 580 270 {lab=#net1}
N 120 270 250 270 {lab=tg1}
N 980 270 1060 270 {lab=#net2}
N 1220 270 1470 270 {lab=Q}
N 1470 -180 1470 -40 {lab=Q}
N 1420 -40 1470 -40 {lab=Q}
C {iopin.sym} 40 -320 0 0 {name=p1 lab=VDD}
C {iopin.sym} 40 -280 0 0 {name=p3 lab=VSS}
C {iopin.sym} 220 -320 0 0 {name=p5 lab=CLK
}
C {iopin.sym} 400 -320 0 0 {name=p9 lab=D}
C {iopin.sym} 230 -290 0 0 {name=p13 lab=RN}
C {lab_pin.sym} 260 -140 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 -90 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 -60 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 250 200 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1060 200 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 500 -140 3 1 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 980 -140 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1300 -160 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -40 -60 3 1 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 680 -90 3 1 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 290 200 3 1 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 200 3 1 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 500 100 1 1 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 100 2 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 980 100 2 1 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 80 2 1 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 120 -40 0 0 {name=p33 sig_type=std_logic lab=RN}
C {lab_pin.sym} 1160 -60 0 0 {name=p34 sig_type=std_logic lab=RN}
C {lab_pin.sym} -140 0 0 0 {name=p36 sig_type=std_logic lab=D
}
C {lab_pin.sym} 330 170 3 1 {name=p39 sig_type=std_logic lab=CLK2
}
C {lab_pin.sym} 1140 350 0 1 {name=p40 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 0 -100 1 0 {name=p41 sig_type=std_logic lab=CLKN
}
C {lab_pin.sym} 1140 170 2 0 {name=p43 sig_type=std_logic lab=CLKN
}
C {designs/sar_adc/digital/TG/xschem/TG.sym} 0 20 0 0 {name=x1}
C {designs/sar_adc/digital/TG/xschem/TG.sym} 720 0 0 0 {name=x2}
C {designs/sar_adc/digital/TG/xschem/TG.sym} 1140 290 0 0 {name=x3}
C {designs/sar_adc/digital/TG/xschem/TG.sym} 330 290 0 0 {name=x4}
C {designs/sar_adc/digital/NAND/xschem/NAND.sym} 260 -20 0 0 {name=x5}
C {designs/sar_adc/digital/NAND/xschem/NAND.sym} 1300 -40 0 0 {name=x6}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 520 0 0 0 {name=x8}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} -440 -30 0 0 {name=x9}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 1000 0 0 0 {name=x7}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} -440 230 0 0 {name=x10}
C {lab_pin.sym} -580 -50 2 1 {name=p2 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} -340 -50 0 1 {name=p4 sig_type=std_logic lab=CLK2
}
C {lab_pin.sym} -330 210 0 1 {name=p7 sig_type=std_logic lab=CLKN
}
C {lab_pin.sym} -460 -160 2 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -460 110 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -460 60 0 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -460 310 0 1 {name=p47 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -580 210 2 1 {name=p49 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 400 -20 3 1 {name=p50 sig_type=std_logic lab=nand1}
C {lab_pin.sym} 100 0 1 1 {name=p51 sig_type=std_logic lab=tg1}
C {iopin.sym} 400 -280 0 0 {name=p6 lab=Q}
C {lab_pin.sym} 1470 -180 0 0 {name=p11 sig_type=std_logic lab=Q}
C {lab_pin.sym} 720 -120 3 1 {name=p53 sig_type=std_logic lab=CLK2
}
C {lab_pin.sym} 720 60 2 0 {name=p10 sig_type=std_logic lab=CLKN
}
C {lab_pin.sym} 0 80 1 1 {name=p37 sig_type=std_logic lab=CLK
}
C {lab_pin.sym} 330 350 2 0 {name=p38 sig_type=std_logic lab=CLKN
}
