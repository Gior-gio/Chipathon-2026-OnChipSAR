v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 120 -350 {}
N 180 -360 180 -300 {lab=VRP}
N 220 -360 220 -300 {lab=VDD}
N 260 -360 260 -300 {lab=SAMP}
N 180 -100 180 -40 {lab=VRN}
N 220 -100 220 -40 {lab=VSS}
N 260 -100 260 -40 {lab=CLK}
N 40 -200 100 -200 {lab=VIN}
N 340 -240 400 -240 {lab=VX}
N 340 -200 400 -200 {lab=B[9:0]}
N 340 -160 400 -160 {lab=VY}
N -430 -60 -430 -40 {lab=GND}
N -330 -60 -330 -40 {lab=GND}
N -430 -160 -430 -120 {lab=VDD}
N -330 -160 -330 -120 {lab=VSS}
N -430 -280 -430 -260 {lab=GND}
N -330 -280 -330 -260 {lab=GND}
N -430 -380 -430 -340 {lab=VRP}
N -330 -380 -330 -340 {lab=VRN}
N -530 -280 -530 -260 {lab=GND}
N -530 -380 -530 -340 {lab=SAMP}
N -230 -290 -230 -260 {lab=GND}
N -230 -380 -230 -350 {lab=VIN}
N -530 -60 -530 -40 {lab=GND}
N -530 -160 -530 -120 {lab=CLK}
C {designs/sar_adc/top/sar_adc_10b/xschem/sar_adc_10b.sym} 220 -200 0 0 {name=xADC}
C {lab_wire.sym} 390 -200 0 0 {name=p151 sig_type=std_logic lab=B[9:0]}
C {lab_wire.sym} 380 -240 0 0 {name=p1 sig_type=std_logic lab=VX}
C {lab_wire.sym} 380 -160 0 0 {name=p2 sig_type=std_logic lab=VY}
C {lab_wire.sym} 60 -200 0 1 {name=p3 sig_type=std_logic lab=VIN}
C {lab_wire.sym} 180 -310 3 1 {name=p4 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 220 -310 3 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 260 -310 3 1 {name=p6 sig_type=std_logic lab=SAMP}
C {lab_wire.sym} 180 -90 3 0 {name=p7 sig_type=std_logic lab=VRN}
C {lab_wire.sym} 220 -90 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 260 -90 3 0 {name=p9 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} -430 -90 0 0 {name=VSP value=\{VDD\}}
C {devices/gnd.sym} -430 -40 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -330 -90 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} -330 -40 0 0 {name=l13 lab=GND}
C {lab_wire.sym} -430 -130 3 1 {name=p135 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -330 -130 3 1 {name=p136 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -430 -310 0 0 {name=VREFP value=\{VRP\}}
C {devices/gnd.sym} -430 -260 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -330 -310 0 0 {name=VREFN value=\{VRN\}}
C {devices/gnd.sym} -330 -260 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -430 -350 3 1 {name=p137 sig_type=std_logic lab=VRP}
C {lab_wire.sym} -330 -350 3 1 {name=p138 sig_type=std_logic lab=VRN}
C {gnd.sym} -530 -260 0 1 {name=l1 lab=GND}
C {lab_wire.sym} -530 -350 3 1 {name=p36 sig_type=std_logic lab=SAMP}
C {code.sym} -217.5 -137.5 0 0 {name=CODE only_toplevel=false 
value="
.temp 27

* Voltages
.param VDD = 3.3
.param VSS = 0
.param VRP = 2.1
.param VRN = 1.2
.param VRPN = VRP-VRN
.param VCM = (VRP+VRN)/2

* Input parameters
.param Fs = 5Meg
.param Ns = 64
.param Nc = 7
.param fin = Nc/Ns*Fs

* Sampling clock
.param Ts = 1/Fs
.param Tclk = 1/(Fs*12)

.control

* Local variables for .control
let Fs = 5Meg
let Ns = 1
let Nspare = 5
let VRP = 2.1
let VRN = 1.2
let VDD = 3.3

let tstep = 1/(Fs*12*250)
let tstop = (Ns + Nspare)/Fs

* Save main signals
save V(VIN) V(VX) V(VY) \\"B[9]\\" \\"B[8]\\" \\"B[7]\\" \\"B[6]\\" \\"B[5]\\" \\"B[4]\\" \\"B[3]\\" \\"B[2]\\" \\"B[1]\\" \\"B[0]\\" V(xADC.COMP) I(VSP) I(VREFP) I(VREFN)
*save all

* Transient simulation
tran $&tstep $&tstop

* Output waveforms
linearize
let vxy = V(VX)-V(VY)
let dout = (\\"B[9]\\"*1/2 + \\"B[8]\\"*1/4 +
+ \\"B[7]\\"*1/8 + \\"B[6]\\"*1/16 +
+ \\"B[5]\\"*1/32 + \\"B[4]\\"*1/64 +
+ \\"B[3]\\"*1/128 + \\"B[2]\\"*1/256 +
+ \\"B[1]\\"*1/512 + \\"B[0]\\"*1/1024)

* Power measurement
* REFERENCE:
let P_REF = -1*VRP*i(VREFP) - 1*VRN*i(VREFN)
meas tran P_REF_avg AVG P_REF from=tstep to=tstop

* SUPPLY:
let P_VDD = -1*VDD*i(VSP)
meas tran P_VDD_avg AVG P_VDD from=tstep to=tstop
let P_T_avg = P_REF_avg + P_VDD_avg

* Print outputs
echo ============================================================
echo POWER_AND_RESISTANCE
echo ============================================================

echo REF POWER = $&P_REF_avg W
echo VDD POWER = $&P_VDD_avg W
echo TOTAL POWER = $&P_T_avg W

* export waveforms
wrdata tb_sar_adc_10b.csv v(VIN) v(VX) v(VY) dout P_REF P_VDD

 * Plots
*plot V(VX) V(VY)
*plot V(VIN) V(VRP) V(VRN)
*plot V(CLK) V(SAMP)
*plot V(xADC.COMP)
plot vxy
plot dout

.endc
"}
C {devices/vsource.sym} -230 -320 0 0 {name=VSIN value= "SIN(\{VCM\} \{0.95*VRPN/2\} \{fin\} 0 )"
}
C {devices/gnd.sym} -230 -260 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -230 -360 3 1 {name=p10 sig_type=std_logic lab=VIN
}
C {devices/vsource.sym} -530 -310 0 1 {name=VSAM value="PULSE(\{VSS\} \{VDD\} 0 0.1n 0.1n \{Tclk\} \{Ts\})"
}
C {gnd.sym} -530 -40 0 1 {name=l3 lab=GND}
C {lab_wire.sym} -530 -130 3 1 {name=p11 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} -530 -90 0 1 {name=VCLK value="PULSE(\{VDD\} \{VSS\} 0 0.1n 0.1n \{Tclk/2\} \{Tclk\})"
}
C {devices/code_shown.sym} -560 35 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical

* Monte Carlo settings
.param sw_stat_global = 0
.param sw_stat_mismatch = 0
.option SEED = 98765
"}
