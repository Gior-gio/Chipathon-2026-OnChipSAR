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
N 750 -400 780 -400 {lab=SAMPN}
N 770 -60 770 -20 {lab=SAMPN}
N 860 -240 880 -240 {lab=BN[9:0]}
N 860 -120 880 -120 {lab=B[9:0]}
N 235 -400 235 -20 {lab=SAMPN}
N 235 -20 770 -20 {lab=SAMPN}
N 870 -670 920 -670 {lab=CK[9:0]}
N 660 -140 700 -140 {lab=CK[9:0]}
N 0 -400 60 -400 {lab=SAMP}
N 140 -510 140 -470 {lab=VDD}
N 140 -330 140 -300 {lab=VSS}
N -420 -150 -360 -150 {lab=Vcomp}
N -190 -150 -130 -150 {lab=VCB}
N -290 -270 -290 -230 {lab=VDD}
N -290 -70 -290 -40 {lab=VSS}
N 1450 -790 1450 -750 {lab=VDD}
N 1450 -590 1450 -560 {lab=VSS}
N 1550 -670 1590 -670 {lab=SW0[8:0]}
N 1330 -670 1380 -670 {lab=BN[9:1]}
N 1450 -280 1450 -250 {lab=VSS}
N 1550 -360 1590 -360 {lab=SW1[8:0]}
N 1330 -360 1380 -360 {lab=CK[9:1]}
N 1490 -790 1490 -730 {lab=BNN[9:1]}
N 1450 -480 1450 -440 {lab=VDD}
N 1490 -480 1490 -420 {lab=CKN[9:1]}
N -250 -270 -250 -210 {lab=VCN}
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
C {iopin.sym} -420 -150 0 1 {name=p19 lab=Vcomp}
C {lab_pin.sym} 660 -240 2 1 {name=p24 sig_type=std_logic lab=VCB}
C {iopin.sym} 880 -120 2 1 {name=p26 lab=B[9:0]}
C {lab_pin.sym} 920 -670 0 1 {name=p14 sig_type=std_logic lab=CK[9:0]}
C {lab_pin.sym} 660 -140 2 1 {name=p17 sig_type=std_logic lab=CK[9:0]}
C {lab_pin.sym} 540 -270 2 1 {name=p18 sig_type=std_logic lab=SET}
C {designs/sar_adc/digital/inverter/xschem/inverter.sym} 160 -380 0 0 {name=x1}
C {lab_pin.sym} 140 -490 0 1 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -310 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 770 -40 2 1 {name=p28 sig_type=std_logic lab=SAMPN}
C {lab_pin.sym} -130 -150 2 0 {name=p31 sig_type=std_logic lab=VCB}
C {lab_pin.sym} -290 -270 0 0 {name=p32 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -290 -40 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -250 -270 2 0 {name=p34 sig_type=std_logic lab=VCN}
C {iopin.sym} 1590 -670 2 1 {name=p35 lab=SW0[8:0]}
C {lab_pin.sym} 1450 -790 0 0 {name=p36 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1450 -560 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1490 -790 2 0 {name=p40 sig_type=std_logic lab=BNN[9:1]}
C {lab_pin.sym} 880 -240 2 0 {name=p41 sig_type=std_logic lab=BN[9:0]}
C {lab_pin.sym} 1330 -670 2 1 {name=p25 sig_type=std_logic lab=BN[9:1]}
C {iopin.sym} 1590 -360 2 1 {name=p42 lab=SW1[8:0]}
C {lab_pin.sym} 1450 -250 0 1 {name=p44 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1490 -480 2 0 {name=p47 sig_type=std_logic lab=CKN[9:1]}
C {lab_pin.sym} 1330 -360 2 1 {name=p48 sig_type=std_logic lab=CK[9:1]}
C {designs/sar_adc/digital/buffer_x1/xschem/buffer_SW0.sym} 1460 -670 0 0 {name=x4}
C {designs/sar_adc/digital/buffer_x1/xschem/buffer_SW1.sym} 1450 -360 0 0 {name=x5}
C {lab_pin.sym} 1450 -480 0 0 {name=p37 sig_type=std_logic lab=VDD}
C {designs/sar_adc/digital/buffer_x1/xschem/buffer_VCB.sym} -290 -150 0 0 {name=x2}
