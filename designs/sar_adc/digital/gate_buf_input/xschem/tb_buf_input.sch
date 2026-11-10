v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 170 -100 170 -80 {lab=0}
N 260 -100 260 -80 {lab=0}
N 170 -180 170 -170 {lab=VSS}
N 170 -370 200 -370 {lab=VIN}
N 260 -320 260 -290 {lab=VSS}
N 390 -370 390 -350 {lab=VOUT}
N 390 -290 390 -270 {lab=0}
N 390 -370 430 -370 {lab=VOUT}
N 170 -170 170 -160 {lab=VSS}
N 260 -180 260 -160 {lab=VIN}
N 70 -100 70 -80 {lab=0}
N 70 -180 70 -160 {lab=VDD}
N 260 -100 260 -80 {lab=0}
N 260 -180 260 -160 {lab=VIN}
N 70 -100 70 -80 {lab=0}
N 70 -180 70 -160 {lab=VDD}
N 340 -370 390 -370 {lab=VOUT}
N 260 -430 260 -420 {lab=VDD}
N 260 -450 260 -430 {lab=VDD}
C {gnd.sym} 70 -80 0 0 {name=l1 lab=0}
C {gnd.sym} 170 -80 0 0 {name=l2 lab=0}
C {vsource.sym} 170 -130 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 260 -80 0 0 {name=l3 lab=0}
C {capa-2.sym} 390 -320 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 390 -270 0 0 {name=l4 lab=0}
C {lab_wire.sym} 70 -180 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 170 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 260 -180 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {lab_wire.sym} 260 -450 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 260 -290 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 170 -370 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {lab_wire.sym} 430 -370 2 0 {name=p7 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 520 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/smbb000149.ngspice typical
"}
C {code.sym} 665 -400 0 0 {name=s1 only_toplevel=false value="
.param Vmid = 1.65
* Sampling clock
.param Fs = 16Meg

* Input parameters
.param Ts = 1/Fs
.param ton = Ts/2

.param Ns = 1024
.param Nc = 103
.param fin = Nc/Ns*Fs

.param sw_stat_mismatch = 0
.param fnoicor = 0

* Test-bench parameters
.temp 27
.param VDD = 3.3
.param Cload = 1p

.save @v.x1.V_inv1[i]
.save @v.x1.V_inv2[i]
.save @v.x1.V_inv3[i]
.save @v.x1.V_inv4[i]
.save all

.control

let tstep = 100p
let tstop = 0.2u

tran $&tstep $&tstop

* - Propagation delay
meas TRAN TPLH  TRIG v(vin) VAL=1.65 RISE=2 TARG v(vout) VAL=1.65 RISE=2
meas TRAN TPHL TRIG v(vin) VAL=1.65 FALL=2  TARG v(vout) VAL=1.65 FALL=2

* - Rise and fall time
meas TRAN TRISE  TRIG v(vout) VAL=0.33 RISE=2 TARG v(vout) VAL=2.97 RISE=2
meas TRAN TFALL  TRIG v(vout) VAL=2.97 FALL=2 TARG v(vout) VAL=0.33 FALL=2

* - Output voltage levels
meas TRAN VOH MAX v(vout) FROM=100n TO=0.2u
meas TRAN VOL MIN v(vout) FROM=100n TO=0.2u

* - Pulse width
meas TRAN PW_IN TRIG v(vin) VAL=1.65 RISE=2 TARG v(vin) VAL=1.65 FALL=2
meas TRAN PW_OUT TRIG v(vout) VAL=1.65 RISE=2 TARG v(vout) VAL=1.65 FALL=2

* - Average propagation delay
let TP_AVG = (TPLH + TPHL)/2

* - Power and Current calculations 
let IDD = -1 * i(v1)
meas tran I_AVG AVG IDD FROM=100n TO=0.2u
let P_AVG = I_AVG * 3.3


*Internal currents
let I_inv1 = @v.x1.V_inv1[i]
let I_inv2 = @v.x1.V_inv2[i]
let I_inv3 = @v.x1.V_inv3[i]
let I_inv4 = @v.x1.V_inv4[i]

meas tran I_avg_inv1 AVG I_inv1 from=10p to=tstop
meas tran I_avg_inv2 AVG I_inv2 from=10p to=tstop
meas tran I_avg_inv3 AVG I_inv3 from=10p to=tstop
meas tran I_avg_inv4 AVG I_inv4 from=10p to=tstop
print I_avg_inv1 I_avg_inv2 I_avg_inv3 I_avg_inv4



* - Print results
print TPLH TPHL TP_AVG
print TRISE TFALL
print VOH VOL
print PW_IN PW_OUT
print I_AVG P_AVG

plot v(vout) v(vin)

.endc

"}
C {devices/vsource.sym} 70 -130 0 0 {name=v1 value=\{VDD\}
}
C {devices/vsource.sym} 260 -130 0 0 {name=V3 value="PULSE(0 \{VDD\} 0 0.5n 0.5n \{ton\} \{Ts\})"
}
C {designs/sar_adc/digital/gate_buf_input/xschem/gate_buf_input.sym} 160 -270 0 0 {name=x1}
