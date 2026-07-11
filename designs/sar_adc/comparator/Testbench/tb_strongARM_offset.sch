v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {VDD_V}
S {}
F {}
E {}
N 290 -140 290 -120 {lab=GND}
N 100 0 100 20 {lab=GND}
N 110 -250 210 -250 {lab=VIP}
N 190 -170 190 -120 {lab=VIN}
N 190 -170 210 -170 {lab=VIN}
N 350 -240 420 -240 {lab=Op}
N 350 -180 420 -180 {lab=On}
N 20 -340 20 -320 {lab=GND}
N 20 -420 20 -400 {lab=CLK}
N 350 -310 350 -300 {lab=GND}
N 290 -300 290 -280 {lab=VDD}
N 290 -390 290 -300 {lab=VDD}
N 290 -390 350 -390 {lab=VDD}
N 350 -390 350 -370 {lab=VDD}
N 190 -210 210 -210 {lab=CLK}
N 10 -250 110 -250 {lab=VIP}
N 190 -120 190 -100 {lab=VIN}
N 10 -100 190 -100 {lab=VIN}
N 100 -100 100 -80 {lab=VIN}
N 420 -180 460 -180 {lab=On}
N 460 -180 460 -140 {lab=On}
N 460 -140 510 -140 {lab=On}
N 420 -240 460 -240 {lab=Op}
N 460 -280 460 -240 {lab=Op}
N 460 -280 510 -280 {lab=Op}
N 640 -350 660 -350 {lab=VDD}
N 550 -260 550 -230 {lab=GND}
N 650 -200 670 -200 {lab=VDD}
N 590 -140 610 -140 {lab=ONN}
N 590 -280 610 -280 {lab=OPP}
N 100 -70 100 -60 {lab=VIN}
N 100 -80 100 -70 {lab=VIN}
N 10 -250 10 -240 {lab=VIP}
N 10 -150 10 -100 {lab=VIN}
N 10 -240 10 -210 {lab=VIP}
N 550 -120 550 -90 {lab=GND}
N 550 -350 550 -300 {lab=#net1}
N 550 -350 580 -350 {lab=#net1}
N 550 -200 550 -160 {lab=#net2}
N 550 -200 590 -200 {lab=#net2}
C {vsource.sym} 350 -340 0 0 {name=V1 value=\{VDD\} savecurrent=false}
C {gnd.sym} 290 -120 0 0 {name=l1 lab=GND}
C {gnd.sym} 100 20 0 0 {name=l2 lab=GND}
C {vsource.sym} 10 -180 0 0 {name=V2 value="pwl(0 \{-offset_resolution\} \{num_cycles*T_clk\} \{offset_resolution\})" savecurrent=false}
C {vsource.sym} 20 -370 0 0 {name=V3 value="pulse(\{VDD\} 0 1n 100p 100p \{T_clk/2\}) \{T_clk\})" savecurrent=false}
C {vsource.sym} 100 -30 0 0 {name=V4 value=\{vcm\} savecurrent=false}
C {lab_pin.sym} 420 -240 0 0 {name=p1 sig_type=std_logic lab=Op}
C {lab_pin.sym} 420 -180 0 0 {name=p2 sig_type=std_logic lab=On}
C {lab_pin.sym} 190 -170 0 0 {name=p5 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 290 -300 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 760 -640 0 0 {name=s1 only_toplevel=false value="
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
+ TRIG v(CLK) VAL=\{vcm\} RISE=1 TD=5n
+ TARG v(Op)      VAL=\{vcm\} FALL=1


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
C {designs/sar_adc/comparator/StrongARM/strongARM.sym} 370 -210 0 0 {name=x1}
C {gnd.sym} 20 -320 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 20 -410 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {gnd.sym} 350 -300 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 190 -210 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 160 -250 0 0 {name=p4 sig_type=std_logic lab=VIP}
C {designs/sar_adc/comparator/Inverter/inv.sym} 630 -180 0 0 {name=x2[9:0]}
C {designs/sar_adc/comparator/Inverter/inv.sym} 630 -40 0 0 {name=x1[9:0]}
C {noconn.sym} 610 -140 0 1 {name=l5}
C {noconn.sym} 610 -280 0 1 {name=l6}
C {gnd.sym} 550 -230 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 660 -350 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 670 -200 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 600 -280 0 1 {name=p10 sig_type=std_logic lab=OPP}
C {lab_pin.sym} 600 -140 0 1 {name=p11 sig_type=std_logic lab=ONN}
C {gnd.sym} 550 -90 0 0 {name=l8 lab=GND}
C {vsource.sym} 610 -350 1 0 {name=Vn1 value=0 savecurrent=false}
C {vsource.sym} 620 -200 1 0 {name=Vn2 value=0 savecurrent=false}
