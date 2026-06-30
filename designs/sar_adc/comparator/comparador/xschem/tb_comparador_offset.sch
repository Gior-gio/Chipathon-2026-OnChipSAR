v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {VDD_V}
S {}
F {}
E {}
N 60 -250 60 -220 {lab=GND}
N 60 -340 60 -310 {lab=VDD}
N 60 -340 290 -340 {lab=VDD}
N 290 -340 290 -280 {lab=VDD}
N 290 -140 290 -120 {lab=GND}
N 190 -60 190 -40 {lab=GND}
N 140 -50 190 -50 {lab=GND}
N 140 -110 140 -50 {lab=GND}
N 110 -190 110 -50 {lab=GND}
N 110 -50 140 -50 {lab=GND}
N 60 -50 110 -50 {lab=GND}
N 60 -220 60 -50 {lab=GND}
N 110 -250 210 -250 {lab=VIP}
N 140 -210 140 -170 {lab=CLK_NEG}
N 140 -210 210 -210 {lab=CLK_NEG}
N 190 -170 190 -120 {lab=ViN}
N 190 -170 210 -170 {lab=ViN}
N 350 -240 420 -240 {lab=Op}
N 350 -180 420 -180 {lab=On}
C {comparador.sym} 370 -210 0 0 {name=x1}
C {vsource.sym} 60 -280 0 0 {name=V1 value="3.3" savecurrent=false}
C {gnd.sym} 290 -120 0 0 {name=l1 lab=GND}
C {gnd.sym} 190 -40 0 0 {name=l2 lab=GND}
C {vsource.sym} 110 -220 0 0 {name=V2 value="pwl(0 1.60 40n 1.70)" savecurrent=false}
C {vsource.sym} 140 -140 0 0 {name=V3 value="pulse(3.3 0 1n 100p 100p 2n 4n)" savecurrent=false}
C {vsource.sym} 190 -90 0 0 {name=V4 value="1.65" savecurrent=false}
C {lab_pin.sym} 420 -240 0 0 {name=p1 sig_type=std_logic lab=Op}
C {lab_pin.sym} 420 -180 0 0 {name=p2 sig_type=std_logic lab=On}
C {lab_pin.sym} 140 -210 0 0 {name=p3 sig_type=std_logic lab=CLK_NEG}
C {lab_pin.sym} 110 -250 0 0 {name=p4 sig_type=std_logic lab=VIP}
C {lab_pin.sym} 190 -170 0 0 {name=p5 sig_type=std_logic lab=ViN}
C {lab_pin.sym} 60 -340 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {code_shown.sym} 500 -290 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib '/foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice' typical
.tran 50p 40n
.measure tran VVIP_cross FIND v(VIP) WHEN v(On)=1.65 FALL=1
.end
"}
