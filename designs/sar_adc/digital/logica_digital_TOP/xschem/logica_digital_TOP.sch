v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -460 50 -460 {lab=VDD}
N 0 -360 50 -360 {lab=CLK}
N 160 -170 160 -130 {lab=VDD}
N 160 50 160 80 {lab=VSS}
N 140 -280 140 -250 {lab=VSS}
N 140 -560 140 -520 {lab=VDD}
N 600 -560 600 -520 {lab=VDD}
N 600 -280 600 -240 {lab=VSS}
N 20 -190 550 -190 {lab=SAMP}
N 580 -280 580 -190 {lab=SAMP}
N 120 -280 120 -190 {lab=SAMP}
N 50 -40 100 -40 {lab=SAMP}
N 50 -190 50 -40 {lab=SAMP}
N 570 -120 570 -90 {lab=#net1}
N 340 -120 570 -120 {lab=#net1}
N 340 -120 340 -40 {lab=#net1}
N 220 -40 340 -40 {lab=#net1}
N 590 -140 590 -90 {lab=VDD}
N 590 150 590 190 {lab=VSS}
N 210 -460 270 -460 {lab=CK[8]}
N 450 -360 510 -360 {lab=CLK}
N 450 -460 510 -460 {lab=CK[8:1]}
N 460 -30 500 -30 {lab=Vcomp}
N 210 -340 270 -340 {lab=#net2}
N 550 -190 580 -190 {lab=SAMP}
N 570 150 570 190 {lab=SAMP}
N 660 -30 680 -30 {lab=BN[7:0]}
N 660 90 680 90 {lab=B[7:0]}
N 670 -340 690 -340 {lab=#net3}
N 35 -190 35 190 {lab=SAMP}
N 35 190 570 190 {lab=SAMP}
N 670 -460 720 -460 {lab=CK2[7:0]}
N 460 70 500 70 {lab=CK2[8:0]}
C {sar_adc/digital/flip_flop/xschem/FF_D.sym} 140 -400 0 0 {name=x1}
C {sar_adc/digital/flip_flop/xschem/FF_D.sym} 600 -400 0 0 {name=xFFR[9:0]}
C {sar_adc/digital/flip_flop_set/xschem/flip_flop_set.sym} 410 190 0 0 {name=xFFSET[7:0]}
C {sar_adc/digital/edge_detector/xschem/edge_detector.sym} 160 180 0 0 {name=x3}
C {iopin.sym} -30 -340 0 1 {name=p15 lab=VDD}
C {iopin.sym} -30 -320 0 1 {name=p16 lab=VSS}
C {iopin.sym} -30 -280 0 1 {name=p1 lab=SAMP}
C {iopin.sym} -30 -300 0 1 {name=p2 lab=CLK}
C {lab_pin.sym} 0 -460 3 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -360 3 1 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 160 -170 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 160 80 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 -560 3 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 -560 3 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 -240 1 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 -250 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 590 190 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 590 -140 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 270 -460 0 1 {name=p13 sig_type=std_logic lab=CK[8]}
C {lab_pin.sym} 20 -190 2 1 {name=p20 sig_type=std_logic lab=SAMP}
C {lab_pin.sym} 450 -360 3 1 {name=p21 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 450 -460 2 1 {name=p22 sig_type=std_logic lab=CK[8:1]}
C {noconn.sym} 690 -340 2 0 {name=l1}
C {iopin.sym} -30 -260 0 1 {name=p19 lab=Vcomp}
C {lab_pin.sym} 460 -30 2 1 {name=p24 sig_type=std_logic lab=Vcomp}
C {noconn.sym} 270 -340 2 0 {name=l2}
C {iopin.sym} 680 -30 2 1 {name=p25 lab=BN[7:0]}
C {iopin.sym} 680 90 2 1 {name=p26 lab=B[7:0]}
C {lab_pin.sym} 720 -460 0 1 {name=p14 sig_type=std_logic lab=CK2[7:0]}
C {lab_pin.sym} 460 70 2 1 {name=p17 sig_type=std_logic lab=CK2[7:0]}
