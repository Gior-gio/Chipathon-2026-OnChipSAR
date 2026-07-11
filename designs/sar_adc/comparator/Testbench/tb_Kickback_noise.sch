v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -150 -80 -150 -60 {lab=GND}
N -340 120 -340 140 {lab=GND}
N -330 -190 -230 -190 {lab=VIP}
N -250 -110 -250 -60 {lab=VIN}
N -250 -110 -230 -110 {lab=VIN}
N -90 -180 -20 -180 {lab=Op}
N -90 -120 -20 -120 {lab=On}
N -420 -280 -420 -260 {lab=GND}
N -420 -360 -420 -340 {lab=CLK}
N -90 -250 -90 -240 {lab=GND}
N -150 -240 -150 -220 {lab=VDD}
N -150 -330 -150 -240 {lab=VDD}
N -150 -330 -90 -330 {lab=VDD}
N -90 -330 -90 -310 {lab=VDD}
N -250 -150 -230 -150 {lab=CLK}
N -430 -190 -330 -190 {lab=VIP}
N -250 -60 -250 -40 {lab=VIN}
N -430 -40 -250 -40 {lab=VIN}
N -340 -40 -340 -20 {lab=VIN}
N -20 -120 20 -120 {lab=On}
N 20 -120 20 -80 {lab=On}
N 20 -80 70 -80 {lab=On}
N -20 -180 20 -180 {lab=Op}
N 20 -220 20 -180 {lab=Op}
N 20 -220 70 -220 {lab=Op}
N 110 -260 110 -240 {lab=VDD}
N 110 -260 130 -260 {lab=VDD}
N 110 -200 110 -170 {lab=GND}
N 110 -120 110 -100 {lab=VDD}
N 110 -120 130 -120 {lab=VDD}
N 150 -80 170 -80 {lab=ONN}
N 150 -220 170 -220 {lab=OPP}
N -340 50 -340 60 {lab=#net1}
N -340 -20 -340 -10 {lab=VIN}
N -430 -120 -430 -100 {lab=#net2}
N -430 -190 -430 -180 {lab=VIP}
C {vsource.sym} -90 -280 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} -150 -60 0 0 {name=l1 lab=GND}
C {gnd.sym} -340 140 0 0 {name=l2 lab=GND}
C {vsource.sym} -430 -70 0 0 {name=V2 value=50m savecurrent=false}
C {vsource.sym} -420 -310 0 0 {name=V3 value="pulse(\{VDD\} 0 1n 100p 100p \{T_clk/2\}) \{T_clk\})" savecurrent=false}
C {vsource.sym} -340 90 0 0 {name=V4 value=\{vcm\} savecurrent=false}
C {lab_pin.sym} -20 -180 0 0 {name=p1 sig_type=std_logic lab=Op}
C {lab_pin.sym} -20 -120 0 0 {name=p2 sig_type=std_logic lab=On}
C {lab_pin.sym} -250 -110 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {lab_pin.sym} -150 -240 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 320 -580 0 0 {name=s1 only_toplevel=false value="
.param VDD = 3.3
.param res = 5m

.param offset_resolution = 20e-3
.param vcm = 1.65
.param num_cycles = 16
.param frec_clk = 100e+6
.param T_clk = \{1/frec_clk\}


.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib '/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice' typical
.tran 25p \{num_cycles*T_clk\}



.measure tran tpd_ON
+ TRIG v(CLK) VAL=\{vcm\} RISE=1 TD=5n
+ TARG v(Op)      VAL=\{vcm\} RISE=1


.measure tran VVIP_cross FIND v(VIP) WHEN v(On)=\{vcm\} RISE=1
.measure tran Ofset param='VVIP_cross - vcm'


.measure tran I_avg AVG i(V1) FROM=\{1 * T_clk\} TO=\{num_cycles*T_clk\}
.measure tran p_avg PARAM = 'VDD*abs(I_avg)'




* --- Kickback Noise Measurement at VIP node ---
* Capture the maximum and minimum voltage during the second clock cycle
.measure tran V_VIP_max MAX v(VIP) FROM=\{1*T_clk\} TO=\{2*T_clk\}
.measure tran V_VIP_min MIN v(VIP) FROM=\{1*T_clk\} TO=\{2*T_clk\}
.measure tran kickback_VIP_pkpk PARAM='V_VIP_max - V_VIP_min'

* --- Kickback Noise Measurement at VIN node ---
.measure tran V_VIN_max MAX v(VIN) FROM=\{1*T_clk\} TO=\{2*T_clk\}
.measure tran V_VIN_min MIN v(VIN) FROM=\{1*T_clk\} TO=\{2*T_clk\}
.measure tran kickback_VIN_pkpk PARAM='V_VIN_max - V_VIN_min'

* --- Differential Kickback Noise Measurement (Fixed) ---
* 1. Create a dummy node (diff_node) representing V(VIP) - V(VIN)
E_diff diff_node GND VIP VIN 1.0

* 2. Measure the maximum and minimum on this new dummy node
.measure tran V_DIFF_max MAX v(diff_node) FROM=\{1*T_clk\} TO=\{2*T_clk\}
.measure tran V_DIFF_min MIN v(diff_node) FROM=\{1*T_clk\} TO=\{2*T_clk\}
.measure tran kickback_diff_pkpk PARAM='V_DIFF_max - V_DIFF_min'

.end
"}
C {designs/sar_adc/comparator/StrongARM/strongARM.sym} -70 -150 0 0 {name=x1}
C {gnd.sym} -420 -260 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -420 -350 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {gnd.sym} -90 -240 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -250 -150 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -280 -190 0 0 {name=p4 sig_type=std_logic lab=VIP}
C {designs/sar_adc/comparator/Inverter/inv.sym} 190 -120 0 0 {name=x2[9:0]}
C {designs/sar_adc/comparator/Inverter/inv.sym} 190 20 0 0 {name=x1[9:0]}
C {noconn.sym} 170 -80 0 1 {name=l5}
C {noconn.sym} 170 -220 0 1 {name=l6}
C {gnd.sym} 110 -170 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 130 -260 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 130 -120 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 160 -220 0 1 {name=p10 sig_type=std_logic lab=OPP}
C {lab_pin.sym} 160 -80 0 1 {name=p11 sig_type=std_logic lab=ONN}
C {res.sym} -430 -150 0 0 {name=R1
value=\{res\}
footprint=1206
device=resistor
m=1}
C {res.sym} -340 20 0 0 {name=R2
value=\{res\}
footprint=1206
device=resistor
m=1}
