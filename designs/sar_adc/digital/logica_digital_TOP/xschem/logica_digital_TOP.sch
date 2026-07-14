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
N 770 -330 770 -300 {lab=SET}
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
N 870 -670 920 -670 {lab=CK[9:0]}
N 660 -140 700 -140 {lab=CK[9:0]}
N 0 -400 60 -400 {lab=SAMP}
N 140 -510 140 -470 {lab=VDD}
N 140 -330 140 -300 {lab=VSS}
N 1260 -260 1260 -220 {lab=VDD}
N 1260 -80 1260 -50 {lab=VSS}
N 1140 -150 1200 -150 {lab=Vcomp}
N 1340 -150 1400 -150 {lab=VCB}
N 1260 -780 1260 -740 {lab=VDD}
N 1260 -600 1260 -570 {lab=VSS}
N 1340 -670 1380 -670 {lab=SW0[8:0]}
N 1150 -670 1200 -670 {lab=BN[9:1]}
N 1260 -530 1260 -490 {lab=VDD}
N 1260 -350 1260 -320 {lab=VSS}
N 1340 -420 1380 -420 {lab=SW1[8:0]}
N 1150 -420 1200 -420 {lab=CK[9:1]}
N 540 -330 770 -330 {lab=SET}
N 260 -400 260 -250 {lab=SAMPN}
N 260 -250 300 -250 {lab=SAMPN}
N 240 -400 240 -20 {lab=SAMPN}
N 240 -20 770 -20 {lab=SAMPN}
C {designs/sar_adc/digital/flip_flop/xschem/FF_D.sym} 340 -610 0 0 {name=xFFR[10]}
C {designs/sar_adc/digital/flip_flop/xschem/FF_D.sym} 800 -610 0 0 {name=xFFR[9:0]}
C {designs/sar_adc/digital/flip_flop_set/xschem/flip_flop_set.sym} 610 -20 0 0 {name=xFFSET[9:0]}
C {designs/sar_adc/digital/edge_detector/xschem/edge_detector.sym} 360 -30 0 0 {name=x3}
C {iopin.sym} 80 -670 0 1 {name=p15 lab=VDD}
C {iopin.sym} 80 -650 0 1 {name=p16 lab=VSS}
C {iopin.sym} 80 -610 0 1 {name=p1 lab=SAMP}
C {iopin.sym} 80 -580 0 1 {name=p2 lab=CLK}
C {lab_pin.sym} 200 -670 3 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 200 -570 2 1 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 360 -380 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -140 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -770 3 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 800 -770 3 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 800 -450 1 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 -460 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -40 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -350 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 470 -670 0 1 {name=p13 sig_type=std_logic lab=CK[10]}
C {lab_pin.sym} 0 -400 2 1 {name=p20 sig_type=std_logic lab=SAMP}
C {lab_pin.sym} 650 -570 2 1 {name=p21 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 650 -670 2 1 {name=p22 sig_type=std_logic lab=CK[10:1]}
C {iopin.sym} 1140 -150 0 1 {name=p19 lab=Vcomp}
C {lab_pin.sym} 660 -240 0 0 {name=p24 sig_type=std_logic lab=VCB}
C {iopin.sym} 880 -120 2 1 {name=p26 lab=B[9:0]}
C {lab_pin.sym} 920 -670 0 1 {name=p14 sig_type=std_logic lab=CK[9:0]}
C {lab_pin.sym} 660 -140 2 1 {name=p17 sig_type=std_logic lab=CK[9:0]}
C {lab_pin.sym} 540 -270 2 1 {name=p18 sig_type=std_logic lab=SET}
C {lab_pin.sym} 140 -490 0 1 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -300 0 1 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 -50 2 1 {name=p28 sig_type=std_logic lab=SAMPN}
C {lab_pin.sym} 1260 -260 0 1 {name=p29 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1260 -50 0 1 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1400 -150 2 0 {name=p31 sig_type=std_logic lab=VCB}
C {iopin.sym} 1380 -670 2 1 {name=p35 lab=SW0[8:0]}
C {lab_pin.sym} 1260 -760 0 1 {name=p36 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1260 -580 0 1 {name=p37 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 880 -240 2 0 {name=p41 sig_type=std_logic lab=BN[9:0]}
C {lab_pin.sym} 1150 -670 2 1 {name=p25 sig_type=std_logic lab=BN[9:1]}
C {iopin.sym} 1380 -420 2 1 {name=p42 lab=SW1[8:0]}
C {lab_pin.sym} 1260 -510 0 1 {name=p43 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1260 -320 0 1 {name=p44 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1150 -420 2 1 {name=p48 sig_type=std_logic lab=CK[9:1]}
C {designs/sar_adc/digital/gate_buf_x1/xschem/gate_buf_x1.sym} 1260 -670 0 0 {name=xbuffersw0[8:0]}
C {designs/sar_adc/digital/gate_buf_x1/xschem/gate_buf_x1.sym} 1260 -420 0 0 {name=xbuffersw1[8:0]}
C {designs/sar_adc/digital/gate_buf_x1/xschem/gate_buf_x1.sym} 1260 -150 0 0 {name=xbuffer}
C {designs/sar_adc/digital/gate_inv_x2/xschem/gate_inv_x2.sym} 110 -400 0 0 {name=xINV_SAMP}
