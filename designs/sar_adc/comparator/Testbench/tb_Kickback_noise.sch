v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 820 -610 820 -590 {lab=GND}
N 630 -410 630 -390 {lab=GND}
N 640 -720 740 -720 {lab=VIP}
N 720 -640 720 -590 {lab=VIN}
N 720 -640 740 -640 {lab=VIN}
N 880 -710 950 -710 {lab=Op}
N 880 -650 950 -650 {lab=On}
N 550 -810 550 -790 {lab=GND}
N 550 -890 550 -870 {lab=CLK}
N 880 -780 880 -770 {lab=GND}
N 820 -770 820 -750 {lab=VDD}
N 820 -860 820 -770 {lab=VDD}
N 820 -860 880 -860 {lab=VDD}
N 880 -860 880 -840 {lab=VDD}
N 720 -680 740 -680 {lab=CLK}
N 540 -720 640 -720 {lab=VIP}
N 720 -590 720 -570 {lab=VIN}
N 540 -570 720 -570 {lab=VIN}
N 630 -570 630 -550 {lab=VIN}
N 950 -650 990 -650 {lab=On}
N 990 -650 990 -610 {lab=On}
N 950 -710 990 -710 {lab=Op}
N 990 -750 990 -710 {lab=Op}
N 990 -750 1040 -750 {lab=Op}
N 1210 -530 1230 -530 {lab=ONN}
N 630 -480 630 -470 {lab=#net1}
N 630 -550 630 -540 {lab=VIN}
N 540 -650 540 -630 {lab=#net2}
N 540 -720 540 -710 {lab=VIP}
N 1120 -840 1120 -820 {lab=VDD}
N 1200 -750 1220 -750 {lab=OPP}
N 1120 -680 1120 -660 {lab=GND}
N 990 -610 990 -530 {lab=On}
N 990 -530 1050 -530 {lab=On}
N 1130 -610 1130 -600 {lab=VDD}
N 1130 -460 1130 -450 {lab=GND}
N 1220 -750 1250 -750 {lab=OPP}
N 1250 -750 1280 -750 {lab=OPP}
N 1230 -530 1280 -530 {lab=ONN}
C {vsource.sym} 880 -810 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} 820 -590 0 0 {name=l1 lab=GND}
C {gnd.sym} 630 -390 0 0 {name=l2 lab=GND}
C {vsource.sym} 540 -600 0 0 {name=V2 value=50m savecurrent=false}
C {vsource.sym} 550 -840 0 0 {name=V3 value="pulse(\{VDD\} 0 1n 100p 100p \{T_clk/2\}) \{T_clk\})" savecurrent=false}
C {vsource.sym} 630 -440 0 0 {name=V4 value=\{vcm\} savecurrent=false}
C {lab_pin.sym} 950 -710 0 0 {name=p1 sig_type=std_logic lab=Op}
C {lab_pin.sym} 950 -650 0 0 {name=p2 sig_type=std_logic lab=On}
C {lab_pin.sym} 720 -640 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 820 -770 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 1290 -1110 0 0 {name=s1 only_toplevel=false value="
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
C {gnd.sym} 550 -790 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 550 -880 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {gnd.sym} 880 -770 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 720 -680 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 690 -720 0 0 {name=p4 sig_type=std_logic lab=VIP}
C {noconn.sym} 1280 -750 0 1 {name=l6}
C {gnd.sym} 1120 -660 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1120 -840 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1130 -610 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1230 -750 0 1 {name=p10 sig_type=std_logic lab=OPP}
C {lab_pin.sym} 1220 -530 0 1 {name=p11 sig_type=std_logic lab=ONN}
C {res.sym} 540 -680 0 0 {name=R1
value=\{res\}
footprint=1206
device=resistor
m=1}
C {res.sym} 630 -510 0 0 {name=R2
value=\{res\}
footprint=1206
device=resistor
m=1}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 1140 -730 0 0 {name=x2}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 1150 -510 0 0 {name=x3}
C {gnd.sym} 1130 -450 0 0 {name=l8 lab=GND}
C {noconn.sym} 1280 -530 0 1 {name=l5}
C {designs/sar_adc/comparator/StrongARM/xschem/strongARM.sym} 900 -680 0 0 {name=x1}
