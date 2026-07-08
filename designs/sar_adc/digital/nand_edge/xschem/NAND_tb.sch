v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -160 80 -160 {lab=a}
N 10 -120 80 -120 {lab=a}
N 180 -60 180 -10 {lab=0}
N 180 -280 180 -220 {lab=VDD}
N 300 -140 390 -140 {lab=out}
N -260 -60 -260 -40 {lab=0}
N -260 -160 -260 -120 {lab=VDD}
N -120 -60 -120 -20 {lab=0}
N -120 -160 -120 -120 {lab=a}
N -120 -160 10 -160 {lab=a}
N -50 -120 10 -120 {lab=a}
N -50 -160 -50 -120 {lab=a}
C {sar_adc/digital/NAND/xschem/NAND.sym} 180 -140 0 0 {name=x1}
C {vsource.sym} -260 -90 0 0 {name=V1 value=3.3 savecurrent=false}
C {lab_pin.sym} -260 -160 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} -260 -40 0 0 {name=l1 lab=0}
C {vsource.sym} -120 -90 0 0 {name=V2 value="PULSE (0 3.3 20n 1n 1n 150n 200n)" savecurrent=false}
C {gnd.sym} -120 -20 0 0 {name=l2 lab=0}
C {gnd.sym} 180 -10 0 0 {name=l4 lab=0}
C {lab_pin.sym} 180 -280 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 350 -140 1 0 {name=p2 sig_type=std_logic lab=out}
C {noconn.sym} 390 -140 2 0 {name=l5}
C {devices/code_shown.sym} 590 -760 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

echo '==============TRAN measurements========='

** Simulations
tran 0.1n 1u

** Plots
setplot dc1
let out = v(out)
plot out
let a = v(a)
plot a
let clk = v(b)
plot b
write FF_tb.raw
.endc
"}
C {devices/code_shown.sym} 620 -130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -20 -160 1 0 {name=p3 sig_type=std_logic lab=a}
