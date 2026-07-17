v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {VDD_V}
S {}
F {}
E {}
N 360 -230 360 -210 {lab=GND}
N 170 -90 170 -70 {lab=GND}
N 180 -340 280 -340 {lab=VIP}
N 260 -260 260 -210 {lab=VIN}
N 260 -260 280 -260 {lab=VIN}
N 420 -330 490 -330 {lab=Op}
N 420 -270 490 -270 {lab=On}
N 90 -430 90 -410 {lab=GND}
N 90 -510 90 -490 {lab=CLK}
N 420 -400 420 -390 {lab=GND}
N 360 -390 360 -370 {lab=VDD}
N 360 -480 360 -390 {lab=VDD}
N 360 -480 420 -480 {lab=VDD}
N 420 -480 420 -460 {lab=VDD}
N 260 -300 280 -300 {lab=CLK}
N 80 -340 180 -340 {lab=VIP}
N 260 -210 260 -190 {lab=VIN}
N 80 -190 260 -190 {lab=VIN}
N 170 -190 170 -170 {lab=VIN}
N 490 -270 530 -270 {lab=On}
N 530 -270 530 -230 {lab=On}
N 530 -230 580 -230 {lab=On}
N 490 -330 530 -330 {lab=Op}
N 530 -370 530 -330 {lab=Op}
N 530 -370 580 -370 {lab=Op}
N 800 -500 820 -500 {lab=VDD}
N 820 -270 840 -270 {lab=VDD}
N 170 -160 170 -150 {lab=VIN}
N 170 -170 170 -160 {lab=VIN}
N 80 -340 80 -330 {lab=VIP}
N 80 -240 80 -190 {lab=VIN}
N 80 -330 80 -300 {lab=VIP}
N 710 -500 740 -500 {lab=#net1}
N 720 -270 760 -270 {lab=#net2}
N 580 -410 580 -370 {lab=Op}
N 580 -410 630 -410 {lab=Op}
N 800 -190 820 -190 {lab=ONN}
N 710 -500 710 -480 {lab=#net1}
N 790 -410 810 -410 {lab=OPP}
N 710 -340 710 -320 {lab=GND}
N 580 -190 640 -190 {lab=On}
N 720 -270 720 -260 {lab=#net2}
N 720 -120 720 -110 {lab=GND}
N 810 -410 840 -410 {lab=OPP}
N 840 -410 870 -410 {lab=OPP}
N 820 -190 870 -190 {lab=ONN}
N 580 -230 580 -190 {lab=On}
C {vsource.sym} 420 -430 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} 360 -210 0 0 {name=l1 lab=GND}
C {gnd.sym} 170 -70 0 0 {name=l2 lab=GND}
C {vsource.sym} 80 -270 0 0 {name=V2 value="pwl(0 \{-offset_resolution\} \{num_cycles*T_clk\} \{offset_resolution\})" savecurrent=false}
C {vsource.sym} 90 -460 0 0 {name=V3 value="pulse(\{VDD\} 0 1n 100p 100p \{T_clk/2\}) \{T_clk\})" savecurrent=false}
C {vsource.sym} 170 -120 0 0 {name=V4 value=\{vcm\} savecurrent=false}
C {lab_pin.sym} 490 -330 0 0 {name=p1 sig_type=std_logic lab=Op}
C {lab_pin.sym} 490 -270 0 0 {name=p2 sig_type=std_logic lab=On}
C {lab_pin.sym} 260 -260 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 360 -390 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 1000 -950 0 0 {name=s1 only_toplevel=false value="
.param VDD = 3.3
.param offset_resolution = 30e-3
.param vcm = 1.65
.param num_cycles = 16
.param frec_clk = 100e+6
.param T_clk = \{1/frec_clk\}


.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib '/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice' typical
.tran 25p \{num_cycles*T_clk\}



.measure tran tpd_ON
+ TRIG v(CLK) VAL=\{vcm\} FALL=1 TD=5n
+ TARG v(Op)      VAL=\{vcm\} RISE=1 TD=5n


.measure tran VVIP_cross FIND v(VIP) WHEN v(On)=\{vcm\} RISE=1
.measure tran Ofset param='VVIP_cross - vcm'



* 1. Nodos virtuales que calculan el valor absoluto en tiempo real
B_abs_v1  nodo_abs_v1  0 V=abs(i(V1))
B_abs_vn1 nodo_abs_vn1 0 V=abs(i(vn1))
B_abs_vn2 nodo_abs_vn2 0 V=abs(i(vn2))

* 2. Medir el promedio del voltaje de esos nodos
.measure tran i_v1_avg avg v(nodo_abs_v1) from=10ns to=160ns
.measure tran i_vn1_avg avg v(nodo_abs_vn1) from=10ns to=160ns
.measure tran i_vn2_avg avg v(nodo_abs_vn2) from=10ns to=160ns

* 3. Calcular la resta final
.measure tran i_final param='i_v1_avg - i_vn1_avg - i_vn2_avg'


.measure tran p_avg PARAM = 'VDD*abs(I_final)'





.end
"}
C {gnd.sym} 90 -410 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 90 -500 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {gnd.sym} 420 -390 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 260 -300 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 230 -340 0 0 {name=p4 sig_type=std_logic lab=VIP}
C {lab_pin.sym} 820 -500 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 840 -270 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {vsource.sym} 770 -500 1 0 {name=Vn1 value=0 savecurrent=false}
C {vsource.sym} 790 -270 1 0 {name=Vn2 value=0 savecurrent=false}
C {designs/sar_adc/comparator/xschem/StrongARM/strongARM.sym} 440 -300 0 0 {name=x1}
C {noconn.sym} 870 -410 0 1 {name=l9}
C {gnd.sym} 710 -320 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 820 -410 0 1 {name=p14 sig_type=std_logic lab=OPP}
C {lab_pin.sym} 810 -190 0 1 {name=p15 sig_type=std_logic lab=ONN}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 730 -390 0 0 {name=x2}
C {designs/sar_adc/digital/gate_inv_x1/xschem/gate_inv_x1.sym} 740 -170 0 0 {name=x3}
C {gnd.sym} 720 -110 0 0 {name=l11 lab=GND}
C {noconn.sym} 870 -190 0 1 {name=l12}
