v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 400 -970 400 -930 {lab=VDD}
N 280 -860 280 -820 {lab=in}
N 280 -760 280 -740 {lab=0}
N -180 -730 -180 -710 {lab=0}
N -180 -830 -180 -790 {lab=VDD}
N 280 -860 320 -860 {lab=in}
N 400 -790 400 -740 {lab=0}
N 480 -860 520 -860 {lab=out}
N 520 -860 550 -860 {lab=out}
C {iopin.sym} 400 -970 0 1 {name=p3 lab=VDD}
C {devices/code_shown.sym} 740 -1270 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all

** Define input signal
let fsig = 1k
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

** Define transient params
let tstop = 2*tper
let tstep = 0.001*tper

print tper tstop tstep

** Set Sources 
alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton  $&tper 0 ]

** Simulations
op
dc vin 0 3.3 0.01
tran $&tstep $&tstop

let VP=3.3
let per10 = Vp*0.1
let per50 = Vp*0.5
let per90 = Vp*0.9

meas TRAN t_rise  TRIG v(out) VAL=per10 rise=2  TARG v(out) VAL=per90 rise=2
meas TRAN t_fall  TRIG v(out) VAL=per90 fall=2  TARG v(out) VAL=per10 fall=2
meas TRAN t_delay  TRIG v(in) VAL=per50 rise=1 TARG v(out) VAL=per50 fall=1
meas TRAN T_period TRIG v(out) VAL=per50 rise=2 TARG v(out) VAL=per50 rise=3
let F_recu=1/T_period

echo '==============TRAN measurements========='

print t_delay
print t_rise
print t_fall
print T_period
print F_recu
print T_period/2


** Plots
setplot dc1
let vout = v(out)
plot vout

setplot tran1
let vout = v(out)
let vin = v(in)
let ivdd = -v1#branch*1e
plot vout vin ivdd

setplot op1

write inv_tb.raw
.endc
"}
C {vsource.sym} -180 -760 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 280 -790 0 0 {name=VIN value="0" savecurrent=false}
C {gnd.sym} 400 -740 0 0 {name=l3 lab=0}
C {lab_pin.sym} -180 -830 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 320 -860 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/code_shown.sym} 140 -430 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {gnd.sym} -180 -710 0 0 {name=l1 lab=0}
C {lab_pin.sym} 500 -860 2 0 {name=p2 sig_type=std_logic lab=out}
C {noconn.sym} 550 -860 2 0 {name=l5}
C {gnd.sym} 280 -740 0 0 {name=l2 lab=0}
C {sar_adc/digital/inverter/xschem/inverter.sym} 420 -840 0 0 {name=x1}
