v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 5 1940 -640 60 -640 60 -80 1940 -80 1940 -640 {}
P 4 1 -40 -460 {}
P 4 5 2020 -720 2580 -720 2580 0 2020 0 2020 -720 {}
P 4 1 660 -690 {}
T {CONTROL SIGNALS
FROM SAR LOGIC} 80 -380 0 0 0.3 0.3 {}
T {TO BOTTOM PLATE
DAC VOLTAGES} 2390 -700 0 0 0.3 0.3 {}
N 2460 -370 2520 -370 {lab=CI}
N 2120 -580 2180 -580 {lab=VBP}
N 2260 -690 2260 -630 {lab=VDD}
N 2400 -520 2460 -520 {lab=CI}
N 2400 -220 2460 -220 {lab=CI}
N 2120 -560 2180 -560 {lab=BP}
N 2120 -600 2180 -600 {lab=BPN}
N 2260 -390 2260 -330 {lab=VDD}
N 2340 -440 2400 -440 {lab=CI}
N 2260 -530 2260 -490 {lab=VSS}
N 2340 -580 2400 -580 {lab=CI}
N 2400 -580 2400 -440 {lab=CI}
N 2260 -90 2260 -30 {lab=VDD}
N 2340 -140 2400 -140 {lab=CI}
N 2260 -230 2260 -190 {lab=VSS}
N 2340 -280 2400 -280 {lab=CI}
N 2400 -280 2400 -140 {lab=CI}
N 2460 -520 2460 -220 {lab=CI}
N 2120 -440 2180 -440 {lab=VBN}
N 2120 -420 2180 -420 {lab=BNN}
N 2120 -460 2180 -460 {lab=BN}
N 2120 -280 2180 -280 {lab=VRST}
N 2120 -260 2180 -260 {lab=RST}
N 2120 -300 2180 -300 {lab=RSTN}
N 2120 -140 2180 -140 {lab=VSAM}
N 2120 -120 2180 -120 {lab=SAMN}
N 2120 -160 2180 -160 {lab=SAM}
N 820 -390 820 -350 {lab=VSS}
N 820 -610 820 -550 {lab=VDD}
N 820 -170 820 -110 {lab=VDD}
N 660 -490 720 -490 {lab=s[1]}
N 660 -450 720 -450 {lab=s[0]}
N 940 -470 1000 -470 {lab=BPN}
N 1080 -600 1080 -540 {lab=VDD}
N 820 -180 820 -170 {lab=VDD}
N 820 -350 820 -330 {lab=VSS}
N 1080 -400 1080 -320 {lab=VSS}
N 940 -250 1000 -250 {lab=BNN}
N 1080 -180 1080 -120 {lab=VDD}
N 1160 -470 1220 -470 {lab=BP}
N 1160 -250 1220 -250 {lab=BN}
N 660 -270 720 -270 {lab=s[1]}
N 660 -230 720 -230 {lab=sn[0]}
N 1480 -390 1480 -350 {lab=VSS}
N 1480 -610 1480 -550 {lab=VDD}
N 1480 -170 1480 -110 {lab=VDD}
N 1320 -490 1380 -490 {lab=sn[1]}
N 1320 -450 1380 -450 {lab=s[0]}
N 1600 -470 1660 -470 {lab=RSTN}
N 1740 -600 1740 -540 {lab=VDD}
N 1480 -180 1480 -170 {lab=VDD}
N 1480 -350 1480 -330 {lab=VSS}
N 1740 -400 1740 -320 {lab=VSS}
N 1600 -250 1660 -250 {lab=SAMN}
N 1740 -180 1740 -120 {lab=VDD}
N 1820 -470 1880 -470 {lab=RST}
N 1820 -250 1880 -250 {lab=SAM}
N 1320 -270 1380 -270 {lab=sn[1]}
N 1320 -230 1380 -230 {lab=sn[0]}
N 400 -600 400 -540 {lab=VDD}
N 400 -400 400 -320 {lab=VSS}
N 400 -180 400 -120 {lab=VDD}
N 260 -470 320 -470 {lab=s[0]}
N 260 -250 320 -250 {lab=s[1]}
N 480 -470 540 -470 {lab=sn[0]}
N 480 -250 540 -250 {lab=sn[1]}
C {ipin.sym} 200 -400 0 0 {name=p2 lab=s[1:0]}
C {iopin.sym} 400 -600 2 1 {name=p5 lab=VDD}
C {iopin.sym} 400 -360 0 0 {name=p4 lab=VSS}
C {ipin.sym} 2120 -280 0 0 {name=p11 lab=VRST}
C {iopin.sym} 2520 -370 2 1 {name=p1 lab=CI}
C {ipin.sym} 2120 -140 0 0 {name=p16 lab=VSAM}
C {ipin.sym} 2120 -580 0 0 {name=p26 lab=VBP}
C {ipin.sym} 2120 -440 0 0 {name=p31 lab=VBN}
C {designs/sar_adc/dac/dac_sw_1state_A/xschem/dac_sw_1state_A.sym} 2260 -580 0 0 {name=xBP}
C {lab_wire.sym} 2260 -680 3 0 {name=p46 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2260 -500 3 1 {name=p47 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2130 -560 0 1 {name=p44 sig_type=std_logic lab=BP}
C {lab_wire.sym} 2130 -600 0 1 {name=p45 sig_type=std_logic lab=BPN}
C {designs/sar_adc/dac/dac_sw_1state_A/xschem/dac_sw_1state_A.sym} 2260 -440 2 1 {name=xBN}
C {lab_wire.sym} 2260 -340 3 1 {name=p50 sig_type=std_logic lab=VDD}
C {designs/sar_adc/dac/dac_sw_1state_A/xschem/dac_sw_1state_A.sym} 2260 -280 0 0 {name=xRST}
C {lab_wire.sym} 2260 -200 3 1 {name=p52 sig_type=std_logic lab=VSS}
C {designs/sar_adc/dac/dac_sw_1state_A/xschem/dac_sw_1state_A.sym} 2260 -140 2 1 {name=xSAM}
C {lab_wire.sym} 2260 -40 3 1 {name=p55 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2130 -420 0 1 {name=p48 sig_type=std_logic lab=BNN}
C {lab_wire.sym} 2130 -460 0 1 {name=p49 sig_type=std_logic lab=BN}
C {lab_wire.sym} 2130 -260 0 1 {name=p51 sig_type=std_logic lab=RST}
C {lab_wire.sym} 2130 -300 0 1 {name=p53 sig_type=std_logic lab=RSTN}
C {lab_wire.sym} 2130 -120 0 1 {name=p54 sig_type=std_logic lab=SAMN}
C {lab_wire.sym} 2130 -160 0 1 {name=p56 sig_type=std_logic lab=SAM}
C {designs/sar_adc/digital/gate_nand_x1/xschem/gate_nand_x1.sym} 820 -470 0 0 {name=xNBP}
C {lab_wire.sym} 820 -350 3 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 820 -600 3 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 820 -160 3 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 670 -490 0 1 {name=p12 sig_type=std_logic lab=s[1]}
C {lab_wire.sym} 670 -270 0 1 {name=p13 sig_type=std_logic lab=s[1]}
C {lab_wire.sym} 670 -230 0 1 {name=p14 sig_type=std_logic lab=sn[0]}
C {lab_wire.sym} 670 -450 0 1 {name=p15 sig_type=std_logic lab=s[0]}
C {lab_wire.sym} 1180 -470 0 1 {name=p17 sig_type=std_logic lab=BP}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 1100 -450 0 0 {name=xBP1}
C {lab_wire.sym} 1080 -590 3 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1080 -350 3 1 {name=p19 sig_type=std_logic lab=VSS}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 1100 -270 2 1 {name=xBN1}
C {lab_wire.sym} 1180 -250 0 1 {name=p20 sig_type=std_logic lab=BN}
C {lab_wire.sym} 1080 -170 3 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 950 -470 0 1 {name=p23 sig_type=std_logic lab=BPN}
C {lab_wire.sym} 950 -250 0 1 {name=p24 sig_type=std_logic lab=BNN}
C {designs/sar_adc/digital/gate_nand_x1/xschem/gate_nand_x1.sym} 820 -250 2 1 {name=xNBN}
C {designs/sar_adc/digital/gate_nand_x1/xschem/gate_nand_x1.sym} 1480 -470 0 0 {name=xNRST}
C {lab_wire.sym} 1480 -350 3 1 {name=p25 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1480 -600 3 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1480 -160 3 0 {name=p28 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1330 -230 0 1 {name=p32 sig_type=std_logic lab=sn[0]}
C {lab_wire.sym} 1840 -470 0 1 {name=p34 sig_type=std_logic lab=RST}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 1760 -450 0 0 {name=xIRST}
C {lab_wire.sym} 1740 -590 3 0 {name=p35 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1740 -350 3 1 {name=p36 sig_type=std_logic lab=VSS}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 1760 -270 2 1 {name=xISAM}
C {lab_wire.sym} 1840 -250 0 1 {name=p37 sig_type=std_logic lab=SAM}
C {lab_wire.sym} 1740 -170 3 0 {name=p40 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1610 -470 0 1 {name=p41 sig_type=std_logic lab=RSTN}
C {lab_wire.sym} 1610 -250 0 1 {name=p42 sig_type=std_logic lab=SAMN}
C {designs/sar_adc/digital/gate_nand_x1/xschem/gate_nand_x1.sym} 1480 -250 2 1 {name=xNSAM}
C {lab_wire.sym} 1330 -490 0 1 {name=p29 sig_type=std_logic lab=sn[1]}
C {lab_wire.sym} 1330 -270 0 1 {name=p30 sig_type=std_logic lab=sn[1]}
C {lab_wire.sym} 1330 -450 0 1 {name=p33 sig_type=std_logic lab=s[0]}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 420 -450 0 0 {name=xS0}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 420 -270 2 1 {name=xS1}
C {lab_wire.sym} 400 -170 3 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 270 -470 0 1 {name=p3 sig_type=std_logic lab=s[0]}
C {lab_wire.sym} 270 -250 0 1 {name=p6 sig_type=std_logic lab=s[1]}
C {lab_wire.sym} 490 -470 0 1 {name=p22 sig_type=std_logic lab=sn[0]}
C {lab_wire.sym} 490 -250 0 1 {name=p38 sig_type=std_logic lab=sn[1]}
