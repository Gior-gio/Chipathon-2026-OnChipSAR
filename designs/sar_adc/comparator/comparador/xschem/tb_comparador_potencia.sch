v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {VDD_V}
S {}
F {}
E {}
N -330 -70 -330 -40 {lab=GND}
N -330 -160 -330 -130 {lab=VDD}
N -330 -160 -100 -160 {lab=VDD}
N -100 -160 -100 -100 {lab=VDD}
N -100 40 -100 60 {lab=GND}
N -200 120 -200 140 {lab=GND}
N -250 130 -200 130 {lab=GND}
N -250 70 -250 130 {lab=GND}
N -280 -10 -280 130 {lab=GND}
N -280 130 -250 130 {lab=GND}
N -330 130 -280 130 {lab=GND}
N -330 -40 -330 130 {lab=GND}
N -280 -70 -180 -70 {lab=VIP}
N -250 -30 -250 10 {lab=CLK_NEG}
N -250 -30 -180 -30 {lab=CLK_NEG}
N -200 10 -200 60 {lab=ViN}
N -200 10 -180 10 {lab=ViN}
N -40 -60 30 -60 {lab=Op}
N -40 0 30 0 {lab=On}
C {comparador.sym} -20 -30 0 0 {name=x1}
C {vsource.sym} -330 -100 0 0 {name=V1 value="3.3" savecurrent=false}
C {gnd.sym} -100 60 0 0 {name=l1 lab=GND}
C {gnd.sym} -200 140 0 0 {name=l2 lab=GND}
C {vsource.sym} -280 -40 0 0 {name=V2 value="1.70" savecurrent=false}
C {vsource.sym} -250 40 0 0 {name=V3 value="pulse(3.3 0 1n 100p 100p 5n 10n)" savecurrent=false}
C {vsource.sym} -200 90 0 0 {name=V4 value="1.60" savecurrent=false}
C {lab_pin.sym} 30 -60 0 0 {name=p1 sig_type=std_logic lab=Op}
C {lab_pin.sym} 30 0 0 0 {name=p2 sig_type=std_logic lab=On}
C {lab_pin.sym} -250 -30 0 0 {name=p3 sig_type=std_logic lab=CLK_NEG}
C {lab_pin.sym} -280 -70 0 0 {name=p4 sig_type=std_logic lab=VIP}
C {lab_pin.sym} -200 10 0 0 {name=p5 sig_type=std_logic lab=ViN}
C {lab_pin.sym} -330 -160 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 110 -110 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib '/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice' typical
.tran 5p 40n
.measure tran P_avg AVG par('-3.3*i(V1)') FROM=0 TO=40n
.end
"}
