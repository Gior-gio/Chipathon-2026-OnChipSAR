v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -670 250 -670 {lab=VDD}
N 200 -570 250 -570 {lab=CLK}
N 360 -380 360 -340 {lab=VDD}
N 360 -160 360 -130 {lab=VSS}
N 340 -490 340 -460 {lab=VSS}
N 340 -770 340 -730 {lab=VDD}
N 800 -770 800 -730 {lab=VDD}
N 800 -490 800 -450 {lab=VSS}
N 220 -400 750 -400 {lab=SAMPN}
N 780 -490 780 -400 {lab=SAMPN}
N 320 -490 320 -400 {lab=SAMPN}
N 250 -250 300 -250 {lab=SAMPN}
N 250 -400 250 -250 {lab=SAMPN}
N 770 -330 770 -300 {lab=SET}
N 540 -330 770 -330 {lab=SET}
N 540 -330 540 -250 {lab=SET}
N 420 -250 540 -250 {lab=SET}
N 790 -350 790 -300 {lab=VDD}
N 790 -60 790 -20 {lab=VSS}
N 410 -670 470 -670 {lab=CK[10]}
N 650 -570 710 -570 {lab=CLK}
N 650 -670 710 -670 {lab=CK[10:1]}
N 660 -240 700 -240 {lab=VCB}
N 410 -550 470 -550 {lab=#net1}
N 750 -400 780 -400 {lab=SAMPN}
N 770 -60 770 -20 {lab=SAMPN}
N 860 -240 880 -240 {lab=BN[9:0]}
N 860 -120 880 -120 {lab=B[9:0]}
N 870 -550 890 -550 {lab=#net2}
N 235 -400 235 -20 {lab=SAMPN}
N 235 -20 770 -20 {lab=SAMPN}
N 870 -670 920 -670 {lab=CK[9:0]}
N 660 -140 700 -140 {lab=CK[9:0]}
N 0 -400 60 -400 {lab=SAMP}
N 140 -510 140 -470 {lab=VDD}
N 140 -330 140 -300 {lab=VSS}
N -280 -260 -280 -220 {lab=VDD}
N -280 -80 -280 -50 {lab=VSS}
N -420 -150 -360 -150 {lab=Vcomp}
N 20 -150 80 -150 {lab=VCB}
N -60 -260 -60 -220 {lab=VDD}
N -60 -80 -60 -50 {lab=VSS}
N -200 -150 -140 -150 {lab=VCN}
N 1350 -780 1350 -740 {lab=VDD}
N 1350 -600 1350 -570 {lab=VSS}
N 1570 -780 1570 -740 {lab=VDD}
N 1570 -600 1570 -570 {lab=VSS}
N 1430 -670 1490 -670 {lab=BNN[9:1]}
N 1650 -670 1690 -670 {lab=SW0[8:0]}
N 1220 -670 1270 -670 {lab=BN[9:1]}
N 1350 -470 1350 -430 {lab=VDD}
N 1350 -290 1350 -260 {lab=VSS}
N 1570 -470 1570 -430 {lab=VDD}
N 1570 -290 1570 -260 {lab=VSS}
N 1430 -360 1490 -360 {lab=CKN[9:1]}
N 1650 -360 1690 -360 {lab=SW1[8:0]}
N 1220 -360 1270 -360 {lab=CK[9:1]}
C {designs/sar_adc/digital/flip_flop/xschem/FF_D.sym} 340 -610 0 0 {name=xFFR[10]}
C {designs/sar_adc/digital/flip_flop/xschem/FF_D.sym} 800 -610 0 0 {name=xFFR[9:0]}
C {designs/sar_adc/digital/flip_flop_set/xschem/flip_flop_set.sym} 610 -20 0 0 {name=xFFSET[9:0]}
C {designs/sar_adc/digital/edge_detector/xschem/edge_detector.sym} 360 -30 0 0 {name=x3}
C {iopin.sym} 80 -670 0 1 {name=p15 lab=VDD}
C {iopin.sym} 80 -650 0 1 {name=p16 lab=VSS}
C {iopin.sym} 80 -610 0 1 {name=p1 lab=SAMP}
C {iopin.sym} 80 -630 0 1 {name=p2 lab=CLK}
C {lab_pin.sym} 200 -670 3 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -570 2 1 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 360 -380 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -140 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -770 3 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 800 -770 3 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 800 -450 1 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -460 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -20 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -350 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 470 -670 0 1 {name=p13 sig_type=std_logic lab=CK[10]}
C {lab_pin.sym} 0 -400 2 1 {name=p20 sig_type=std_logic lab=SAMP}
C {lab_pin.sym} 650 -570 2 1 {name=p21 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 650 -670 2 1 {name=p22 sig_type=std_logic lab=CK[10:1]}
C {noconn.sym} 890 -550 2 0 {name=l1[9:0]}
C {iopin.sym} -420 -150 0 1 {name=p19 lab=Vcomp}
C {lab_pin.sym} 660 -240 2 1 {name=p24 sig_type=std_logic lab=VCB}
C {iopin.sym} 880 -120 2 1 {name=p26 lab=B[9:0]}
C {lab_pin.sym} 920 -670 0 1 {name=p14 sig_type=std_logic lab=CK[9:0]}
C {lab_pin.sym} 660 -140 2 1 {name=p17 sig_type=std_logic lab=CK[9:0]}
C {lab_pin.sym} 540 -270 2 1 {name=p18 sig_type=std_logic lab=SET}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 160 -380 0 0 {name=x1}
C {lab_pin.sym} 140 -490 0 1 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -310 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {noconn.sym} 470 -550 2 0 {name=l2[9:0]}
C {lab_pin.sym} 770 -40 2 1 {name=p28 sig_type=std_logic lab=SAMPN}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} -260 -130 0 0 {name=x2}
C {lab_pin.sym} -280 -240 0 1 {name=p29 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -280 -60 0 1 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 80 -150 2 0 {name=p31 sig_type=std_logic lab=VCB}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} -40 -130 0 0 {name=xINVB[2:0]}
C {lab_pin.sym} -60 -240 0 1 {name=p32 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -60 -60 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -170 -150 1 0 {name=p34 sig_type=std_logic lab=VCN}
C {iopin.sym} 1690 -670 2 1 {name=p35 lab=SW0[8:0]}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 1370 -650 0 0 {name=xINV0A[8:0]}
C {lab_pin.sym} 1350 -760 0 1 {name=p36 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1350 -580 0 1 {name=p37 sig_type=std_logic lab=VSS}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 1590 -650 0 0 {name=xINV0B[8:0]}
C {lab_pin.sym} 1570 -760 0 1 {name=p38 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1570 -580 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1460 -670 1 0 {name=p40 sig_type=std_logic lab=BNN[9:1]}
C {lab_pin.sym} 880 -240 2 0 {name=p41 sig_type=std_logic lab=BN[9:0]}
C {lab_pin.sym} 1220 -670 2 1 {name=p25 sig_type=std_logic lab=BN[9:1]}
C {iopin.sym} 1690 -360 2 1 {name=p42 lab=SW1[8:0]}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 1370 -340 0 0 {name=xINV1A[8:0]}
C {lab_pin.sym} 1350 -450 0 1 {name=p43 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1350 -270 0 1 {name=p44 sig_type=std_logic lab=VSS}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 1590 -340 0 0 {name=xINV1B[8:0]}
C {lab_pin.sym} 1570 -450 0 1 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1570 -270 0 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1460 -360 1 0 {name=p47 sig_type=std_logic lab=CKN[9:1]}
C {lab_pin.sym} 1220 -360 2 1 {name=p48 sig_type=std_logic lab=CK[9:1]}
