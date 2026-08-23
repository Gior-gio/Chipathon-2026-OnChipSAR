v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 580 -220 640 -220 {lab=SAMP}
N 580 -240 640 -240 {lab=CLK}
N 740 -380 740 -320 {lab=VDD}
N 740 -120 740 -60 {lab=VSS}
N 840 -280 940 -280 {lab=SW1p[8:0]}
N 840 -160 940 -160 {lab=SW1n[8:0]}
N 840 -230 940 -230 {lab=B[9:0]}
N 460 -200 640 -200 {lab=COMP}
N 840 -180 940 -180 {lab=#net1}
N 840 -260 940 -260 {lab=SW0p[8:0]}
N 840 -210 940 -210 {lab=eoc}
N 180 -360 180 -320 {lab=VRP}
N 180 -120 180 -80 {lab=VRN}
N 220 -360 220 -320 {lab=VDD}
N 220 -120 220 -80 {lab=VSS}
N 260 -360 260 -320 {lab=SAMP}
N 260 -120 260 -80 {lab=CLK}
N 340 -260 420 -260 {lab=SW1p[8:0]}
N 340 -240 420 -240 {lab=SW0p[8:0]}
N 340 -180 420 -180 {lab=SW1n[8:0]}
N 340 -280 420 -280 {lab=VX}
N 340 -160 420 -160 {lab=VY}
N 340 -220 460 -220 {lab=COMP}
N 460 -220 460 -200 {lab=COMP}
N 60 -220 100 -220 {lab=VIN}
N 340 -200 420 -200 {lab=SW0n[8:0]}
C {lab_wire.sym} 620 -200 0 0 {name=p138 sig_type=std_logic lab=COMP}
C {lab_wire.sym} 740 -340 1 0 {name=p149 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 740 -100 1 1 {name=p150 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 930 -180 0 0 {name=p151 sig_type=std_logic lab=SW0n[8:0]}
C {lab_wire.sym} 930 -280 0 0 {name=p152 sig_type=std_logic lab=SW1p[8:0]}
C {ipin.sym} 580 -240 0 0 {name=p1 lab=CLK}
C {ipin.sym} 580 -220 0 0 {name=p22 lab=SAMP}
C {opin.sym} 940 -230 0 0 {name=p135 lab=B[9:0]}
C {designs/sar_adc/digital/digital_flow/xschem/sar_logic.sym} 740 -220 0 0 {name=xREG}
C {lab_wire.sym} 930 -160 0 0 {name=p147 sig_type=std_logic lab=SW1n[8:0]}
C {lab_wire.sym} 930 -260 0 0 {name=p174 sig_type=std_logic lab=SW0p[8:0]}
C {opin.sym} 940 -210 0 0 {name=p175 lab=eoc}
C {iopin.sym} 220 -80 3 1 {name=p156 lab=VSS}
C {iopin.sym} 220 -360 1 1 {name=p157 lab=VDD}
C {ipin.sym} 180 -360 3 1 {name=p158 lab=VRP}
C {ipin.sym} 180 -80 3 0 {name=p159 lab=VRN}
C {ipin.sym} 60 -220 0 0 {name=p148 lab=VIN}
C {designs/sar_adc/top/sar_adc_10b_core/xschem/sar_adc_10b_core.sym} 220 -220 0 0 {name=xCORE}
C {lab_wire.sym} 260 -360 3 1 {name=p10 sig_type=std_logic lab=SAMP}
C {lab_wire.sym} 260 -80 3 0 {name=p11 sig_type=std_logic lab=CLK}
C {iopin.sym} 420 -280 2 1 {name=p161 lab=VX}
C {iopin.sym} 420 -160 2 1 {name=p160 lab=VY}
C {lab_wire.sym} 420 -200 0 0 {name=p2 sig_type=std_logic lab=SW0n[8:0]}
C {lab_wire.sym} 420 -180 0 0 {name=p3 sig_type=std_logic lab=SW1n[8:0]}
C {lab_wire.sym} 420 -240 0 0 {name=p4 sig_type=std_logic lab=SW0p[8:0]}
C {lab_wire.sym} 420 -260 0 0 {name=p5 sig_type=std_logic lab=SW1p[8:0]}
