v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 650 -820 650 -780 {lab=VRP}
N 630 -820 630 -780 {lab=VRN}
N 590 -820 590 -780 {lab=VRP}
N 570 -820 570 -780 {lab=VRP}
N 650 -640 650 -590 {lab=VDD}
N 630 -640 630 -590 {lab=VSS}
N 610 -640 610 -590 {lab=CP}
N 660 -120 660 -80 {lab=VRP}
N 640 -120 640 -80 {lab=VRN}
N 600 -120 600 -80 {lab=VRP}
N 580 -120 580 -80 {lab=VIN}
N 660 -310 660 -260 {lab=VDD}
N 640 -310 640 -260 {lab=VSS}
N 620 -310 620 -260 {lab=CN}
N -240 -300 -240 -280 {lab=GND}
N -140 -300 -140 -280 {lab=GND}
N -240 -400 -240 -360 {lab=VDD}
N -140 -400 -140 -360 {lab=VSS}
N -240 -510 -240 -490 {lab=GND}
N -140 -510 -140 -490 {lab=GND}
N -240 -610 -240 -570 {lab=VRP}
N -140 -610 -140 -570 {lab=VRN}
N 610 -530 610 -520 {lab=VX}
N 620 -380 620 -370 {lab=VY}
N 550 -860 550 -780 {lab=VSS,SAMPN}
N 560 -120 560 -40 {lab=VSS,SAMPN}
N -340 -510 -340 -490 {lab=GND}
N -340 -610 -340 -570 {lab=SAMP}
N 450 -520 690 -520 {lab=VX}
N -40 -520 -40 -490 {lab=GND}
N -40 -610 -40 -580 {lab=VIN}
N 370 -600 370 -570 {lab=VDD}
N 370 -330 370 -300 {lab=VDD}
N 450 -380 690 -380 {lab=VY}
N 370 -470 370 -430 {lab=VSS}
N 270 -500 290 -500 {lab=SAMP}
N 270 -500 270 -400 {lab=SAMP}
N 270 -400 290 -400 {lab=SAMP}
N 230 -450 270 -450 {lab=SAMP}
N 230 -520 290 -520 {lab=VIN}
N 230 -380 290 -380 {lab=VRN}
N -340 -300 -340 -280 {lab=GND}
N -340 -400 -340 -360 {lab=SAMPN}
C {designs/sar_adc/dac/dac_sw_4state/xschem/dac_sw_4state.sym} 610 -710 1 0 {name=xSWP[8:0]}
C {lab_wire.sym} 650 -790 1 0 {name=p23 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 630 -790 1 0 {name=p24 sig_type=std_logic lab=VRN}
C {lab_wire.sym} 590 -790 1 0 {name=p25 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 570 -790 1 0 {name=p26 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 650 -590 1 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 630 -590 1 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 610 -590 1 0 {name=p29 sig_type=std_logic lab=CP}
C {designs/sar_adc/dac/dac_sw_4state/xschem/dac_sw_4state.sym} 620 -190 1 1 {name=xSWN[8:0]}
C {lab_wire.sym} 640 -110 1 1 {name=p86 sig_type=std_logic lab=VRN}
C {lab_wire.sym} 660 -110 1 1 {name=p87 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 600 -110 1 1 {name=p88 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 580 -110 1 1 {name=p89 sig_type=std_logic lab=VIN}
C {lab_wire.sym} 660 -310 1 1 {name=p90 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -310 1 1 {name=p91 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -310 1 1 {name=p92 sig_type=std_logic lab=CN}
C {devices/vsource.sym} -240 -330 0 0 {name=VSP value=\{VDD\}}
C {devices/gnd.sym} -240 -280 0 0 {name=l12 lab=GND}
C {devices/vsource.sym} -140 -330 0 0 {name=VSN value=\{VSS\}}
C {devices/gnd.sym} -140 -280 0 0 {name=l13 lab=GND}
C {lab_wire.sym} -240 -370 3 1 {name=p135 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -140 -370 3 1 {name=p136 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -240 -540 0 0 {name=VREFP value=\{VRP\}}
C {devices/gnd.sym} -240 -490 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -140 -540 0 0 {name=VREFN value=\{VRN\}}
C {devices/gnd.sym} -140 -490 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -240 -580 3 1 {name=p137 sig_type=std_logic lab=VRP}
C {lab_wire.sym} -140 -580 3 1 {name=p138 sig_type=std_logic lab=VRN}
C {symbols/cap_mim_2f0fF.sym} 610 -560 0 1 {name=CP
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=129}
C {symbols/cap_mim_2f0fF.sym} 620 -340 2 0 {name=CN
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=129}
C {lab_wire.sym} 670 -380 0 0 {name=p30 sig_type=std_logic lab=VY}
C {noconn.sym} 690 -380 0 1 {name=l7}
C {lab_wire.sym} 670 -520 0 0 {name=p31 sig_type=std_logic lab=VX}
C {noconn.sym} 690 -520 0 1 {name=l8
lab=VX}
C {lab_wire.sym} 560 -110 1 1 {name=p35 sig_type=std_logic lab=VSS,SAMPN}
C {gnd.sym} -340 -490 0 1 {name=l1 lab=GND}
C {lab_wire.sym} -340 -580 3 1 {name=p36 sig_type=std_logic lab=SAMP}
C {devices/code_shown.sym} -430 -205 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_ss

"}
C {code.sym} -37.5 -377.5 0 0 {name=CODE only_toplevel=false 
value="
.temp -40

* Voltages
.param VDD = 3.3*0.9
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
.param ton = Ts/12

.param sw_stat_global = 0
.param sw_stat_mismatch = 0

.save all

.control

* Local variables for .control
let Fs = 5Meg
let Ns = 64
let Nspare = 5

let tstep = 1/(Fs*250)
let tstop = (Ns + Nspare)/Fs

* Transient simulation
tran $&tstep $&tstop

* export waveforms
linearize v(VIN) v(VX) v(VY) v(CP) v(CN)
wrdata tb_passiveSDC.csv v(VIN) v(VX) v(VY) v(CP) v(CN)

let vxy = V(VX)-V(VY)
meas tran vxy_avg AVG vxy
meas tran vxy_rms RMS vxy
meas tran vxy_pp  PP  vxy

let vin = V(VIN)
meas tran vin_pp  PP  vin
let gain = vxy_pp / vin_pp

echo ============================================================
echo VXY_STATISTICS
echo ============================================================

echo Average   = $&vxy_avg V
echo RMS       = $&vxy_rms V
echo Peak-Peak = $&vxy_pp V
echo Gain = $&gain V/V

* Plots
plot V(VX) V(VY)
plot vxy
plot V(VIN) V(CN)

.endc
"}
C {devices/vsource.sym} -40 -550 0 0 {name=VSIN value= "SIN(\{VCM\} \{0.95*VRPN/2\} \{fin\} 0 )"
}
C {devices/gnd.sym} -40 -490 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -40 -590 3 1 {name=p5 sig_type=std_logic lab=VIN
}
C {designs/sar_adc/samplehold/bootstrapped/xschem/bootstrapped.sym} 370 -520 0 0 {name=xSHP}
C {lab_wire.sym} 370 -600 0 1 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 370 -450 2 0 {name=p4 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 230 -520 0 0 {name=p7 sig_type=std_logic lab=VIN
}
C {lab_wire.sym} 230 -450 0 0 {name=p9 sig_type=std_logic lab=SAMP
}
C {designs/sar_adc/samplehold/bootstrapped/xschem/bootstrapped.sym} 370 -380 2 1 {name=xSHN}
C {lab_wire.sym} 370 -310 2 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 230 -380 2 1 {name=p6 sig_type=std_logic lab=VRN
}
C {devices/vsource.sym} -340 -540 0 1 {name=VSAM value="PULSE(\{VSS\} \{VDD\} 0 0.1n 0.1n \{ton\} \{Ts\})"
}
C {gnd.sym} -340 -280 0 1 {name=l3 lab=GND}
C {lab_wire.sym} -340 -370 3 1 {name=p8 sig_type=std_logic lab=SAMPN}
C {devices/vsource.sym} -340 -330 0 1 {name=VSAMN value="PULSE(\{VDD\} \{VSS\} 0 0.1n 0.1n \{ton\} \{Ts\})"
}
C {lab_wire.sym} 550 -790 1 0 {name=p3 sig_type=std_logic lab=VSS,SAMPN}
