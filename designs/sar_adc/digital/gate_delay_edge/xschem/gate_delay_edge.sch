v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 520 -280 660 -280 {lab=OUT}
N -520 -400 -520 -350 {lab=VDD}
N -280 -400 -280 -350 {lab=VDD}
N -40 -400 -40 -350 {lab=VDD}
N 200 -400 200 -350 {lab=VDD}
N 440 -400 440 -350 {lab=VDD}
N -520 -210 -520 -120 {lab=VSS}
N -280 -210 -280 -120 {lab=VSS}
N -40 -210 -40 -120 {lab=VSS}
N 200 -210 200 -120 {lab=VSS}
N 440 -210 440 -120 {lab=VSS}
N 280 -280 360 -280 {lab=P3}
N -680 -280 -600 -280 {lab=IN}
N -440 -280 -365 -280 {lab=P0}
N -365 -280 -360 -280 {lab=P0}
N -200 -280 -120 -280 {lab=P1}
N 40 -280 120 -280 {lab=P2}
N 360 -280 380 -280 {lab=P3}
N 120 -280 140 -280 {lab=P2}
N -120 -280 -100 -280 {lab=P1}
N -360 -280 -340 -280 {lab=P0}
N -600 -280 -580 -280 {lab=IN}
N -680 -400 440 -400 {lab=VDD}
N -680 -120 440 -120 {lab=VSS}
C {iopin.sym} -680 -400 0 1 {name=p15 lab=VDD}
C {iopin.sym} -680 -120 0 1 {name=p16 lab=VSS}
C {ipin.sym} -680 -280 0 0 {name=p17 lab=IN}
C {iopin.sym} 660 -280 2 1 {name=p1 lab=OUT}
C {designs/sar_adc/digital/gate_inv_edge/xschem/gate_inv_edge.sym} -520 -280 0 0 {name=xINV0}
C {designs/sar_adc/digital/gate_inv_edge/xschem/gate_inv_edge.sym} -280 -280 0 0 {name=xINV1}
C {designs/sar_adc/digital/gate_inv_edge/xschem/gate_inv_edge.sym} -40 -280 0 0 {name=xINV2}
C {designs/sar_adc/digital/gate_inv_edge/xschem/gate_inv_edge.sym} 200 -280 0 0 {name=xINV3}
C {designs/sar_adc/digital/gate_inv_edge/xschem/gate_inv_edge.sym} 440 -280 0 0 {name=xINV4}
C {lab_pin.sym} -380 -280 3 1 {name=p8 sig_type=std_logic lab=P0
}
C {lab_pin.sym} -130 -280 3 1 {name=p2 sig_type=std_logic lab=P1}
C {lab_pin.sym} 110 -280 3 1 {name=p3 sig_type=std_logic lab=P2}
C {lab_pin.sym} 350 -280 3 1 {name=p4 sig_type=std_logic lab=P3}
