v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -550 120 -510 {lab=VRP}
N 120 -270 120 -230 {lab=VRN}
N 200 -290 240 -290 {lab=VSS}
N 200 -450 300 -450 {lab=VRX1,VRX0}
N 200 -330 300 -330 {lab=VRY1,VRY0}
N 460 -720 460 -680 {lab=VRX0}
N 440 -720 440 -680 {lab=VRY0}
N 400 -720 400 -680 {lab=VRP}
N 380 -720 380 -680 {lab=VRP}
N 460 -540 460 -490 {lab=VDD}
N 440 -540 440 -490 {lab=VSS}
N 420 -540 420 -490 {lab=CP0}
N 660 -720 660 -680 {lab=VRX1}
N 640 -720 640 -680 {lab=VRY1}
N 600 -720 600 -680 {lab=VRP}
N 580 -720 580 -680 {lab=VRP}
N 660 -540 660 -490 {lab=VDD}
N 640 -540 640 -490 {lab=VSS}
N 620 -540 620 -490 {lab=CP1}
N 860 -720 860 -680 {lab=VRP}
N 840 -720 840 -680 {lab=VRN}
N 800 -720 800 -680 {lab=VRP}
N 780 -720 780 -680 {lab=VRP}
N 860 -540 860 -490 {lab=VDD}
N 840 -540 840 -490 {lab=VSS}
N 820 -540 820 -490 {lab=CPX}
N 460 -100 460 -60 {lab=VRY0}
N 440 -100 440 -60 {lab=VRX0}
N 400 -100 400 -60 {lab=VRP}
N 380 -100 380 -60 {lab=VRP}
N 460 -290 460 -240 {lab=VDD}
N 440 -290 440 -240 {lab=VSS}
N 420 -290 420 -240 {lab=CN0}
N 660 -100 660 -60 {lab=VRY1}
N 640 -100 640 -60 {lab=VRX1}
N 600 -100 600 -60 {lab=VRP}
N 580 -100 580 -60 {lab=VRP}
N 660 -290 660 -240 {lab=VDD}
N 640 -290 640 -240 {lab=VSS}
N 620 -290 620 -240 {lab=CN1}
N 860 -100 860 -60 {lab=VRN}
N 840 -100 840 -60 {lab=VRP}
N 800 -100 800 -60 {lab=VRP}
N 780 -100 780 -60 {lab=VRP}
N 860 -290 860 -240 {lab=VDD}
N 840 -290 840 -240 {lab=VSS}
N 820 -290 820 -240 {lab=CNX}
N -240 -300 -240 -280 {lab=GND}
N -140 -300 -140 -280 {lab=GND}
N -240 -400 -240 -360 {lab=VDD}
N -140 -400 -140 -360 {lab=VSS}
N -240 -510 -240 -490 {lab=GND}
N -140 -510 -140 -490 {lab=GND}
N -240 -610 -240 -570 {lab=VRP}
N -140 -610 -140 -570 {lab=VRN}
N 200 -390 260 -390 {lab=VCM}
N 420 -430 420 -420 {lab=VX}
N 420 -420 900 -420 {lab=VX}
N 820 -430 820 -420 {lab=VX}
N 620 -430 620 -420 {lab=VX}
N 420 -360 420 -350 {lab=VY}
N 420 -360 900 -360 {lab=VY}
N 820 -360 820 -350 {lab=VY}
N 620 -360 620 -350 {lab=VY}
N 760 -760 760 -680 {lab=VDD,VDD}
N 560 -760 560 -680 {lab=SWA,SWA}
N 360 -760 360 -680 {lab=SWB,SWB}
N 760 -100 760 -20 {lab=VDD,VDD}
N 560 -100 560 -20 {lab=SWA,SWA}
N 360 -100 360 -20 {lab=SWB,SWB}
N -340 -510 -340 -490 {lab=GND}
N -340 -610 -340 -570 {lab=SWA}
N -340 -300 -340 -280 {lab=GND}
N -340 -400 -340 -360 {lab=SWB}
C {designs/sar_adc/dac/rdac/xschem/rdac.sym} 120 -390 0 0 {name=xRDAC}
C {lab_wire.sym} 120 -520 3 1 {name=p22 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 120 -260 3 0 {name=p1 sig_type=std_logic lab=VRN}
C {lab_wire.sym} 240 -290 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 250 -390 0 0 {name=p3 sig_type=std_logic lab=VCM}
C {lab_wire.sym} 290 -450 0 0 {name=p4 sig_type=std_logic lab=VRX1,VRX0}
C {lab_wire.sym} 290 -330 0 0 {name=p5 sig_type=std_logic lab=VRY1,VRY0}
C {designs/sar_adc/dac/dac_sw_4state/xschem/dac_sw_4state.sym} 420 -610 1 0 {name=xSWP0}
C {lab_wire.sym} 460 -690 1 0 {name=p10 sig_type=std_logic lab=VRX0}
C {lab_wire.sym} 440 -690 1 0 {name=p11 sig_type=std_logic lab=VRY0}
C {lab_wire.sym} 400 -690 1 0 {name=p12 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 380 -690 1 0 {name=p13 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 460 -490 1 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 440 -490 1 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 420 -490 1 0 {name=p16 sig_type=std_logic lab=CP0}
C {designs/sar_adc/dac/dac_sw_4state/xschem/dac_sw_4state.sym} 620 -610 1 0 {name=xSWP1}
C {lab_wire.sym} 660 -690 1 0 {name=p6 sig_type=std_logic lab=VRX1}
C {lab_wire.sym} 640 -690 1 0 {name=p8 sig_type=std_logic lab=VRY1}
C {lab_wire.sym} 600 -690 1 0 {name=p17 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 580 -690 1 0 {name=p18 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 660 -490 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -490 1 0 {name=p20 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -490 1 0 {name=p21 sig_type=std_logic lab=CP1}
C {designs/sar_adc/dac/dac_sw_4state/xschem/dac_sw_4state.sym} 820 -610 1 0 {name=xSWP2}
C {lab_wire.sym} 860 -690 1 0 {name=p23 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 840 -690 1 0 {name=p24 sig_type=std_logic lab=VRN}
C {lab_wire.sym} 800 -690 1 0 {name=p25 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 780 -690 1 0 {name=p26 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 860 -490 1 0 {name=p27 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 840 -490 1 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 820 -490 1 0 {name=p29 sig_type=std_logic lab=CPX}
C {designs/sar_adc/dac/dac_sw_4state/xschem/dac_sw_4state.sym} 420 -170 1 1 {name=xSWN0}
C {lab_wire.sym} 440 -90 1 1 {name=p72 sig_type=std_logic lab=VRX0}
C {lab_wire.sym} 460 -90 1 1 {name=p73 sig_type=std_logic lab=VRY0}
C {lab_wire.sym} 400 -90 1 1 {name=p74 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 380 -90 1 1 {name=p75 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 460 -290 1 1 {name=p76 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 440 -290 1 1 {name=p77 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 420 -290 1 1 {name=p78 sig_type=std_logic lab=CN0}
C {designs/sar_adc/dac/dac_sw_4state/xschem/dac_sw_4state.sym} 620 -170 1 1 {name=xSWN1}
C {lab_wire.sym} 640 -90 1 1 {name=p79 sig_type=std_logic lab=VRX1}
C {lab_wire.sym} 660 -90 1 1 {name=p80 sig_type=std_logic lab=VRY1}
C {lab_wire.sym} 600 -90 1 1 {name=p81 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 580 -90 1 1 {name=p82 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 660 -290 1 1 {name=p83 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 640 -290 1 1 {name=p84 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 620 -290 1 1 {name=p85 sig_type=std_logic lab=CN1}
C {designs/sar_adc/dac/dac_sw_4state/xschem/dac_sw_4state.sym} 820 -170 1 1 {name=xSWN2}
C {lab_wire.sym} 840 -90 1 1 {name=p86 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 860 -90 1 1 {name=p87 sig_type=std_logic lab=VRN}
C {lab_wire.sym} 800 -90 1 1 {name=p88 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 780 -90 1 1 {name=p89 sig_type=std_logic lab=VRP}
C {lab_wire.sym} 860 -290 1 1 {name=p90 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 840 -290 1 1 {name=p91 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 820 -290 1 1 {name=p92 sig_type=std_logic lab=CNX}
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
C {noconn.sym} 260 -390 0 1 {name=l5
lab=VX}
C {symbols/cap_mim_2f0fF.sym} 820 -460 0 1 {name=CP2
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=127}
C {symbols/cap_mim_2f0fF.sym} 620 -460 0 1 {name=CP1
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 420 -460 0 1 {name=CP0
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 820 -320 2 0 {name=CN2
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=127}
C {symbols/cap_mim_2f0fF.sym} 620 -320 2 0 {name=CN1
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 420 -320 2 0 {name=CN0
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {lab_wire.sym} 880 -360 0 0 {name=p30 sig_type=std_logic lab=VY}
C {noconn.sym} 900 -360 0 1 {name=l7}
C {lab_wire.sym} 880 -420 0 0 {name=p31 sig_type=std_logic lab=VX}
C {noconn.sym} 900 -420 0 1 {name=l8
lab=VX}
C {lab_wire.sym} 560 -690 1 0 {name=p7 sig_type=std_logic lab=SWA,SWA}
C {lab_wire.sym} 360 -690 1 0 {name=p32 sig_type=std_logic lab=SWB,SWB}
C {lab_wire.sym} 760 -690 1 0 {name=p33 sig_type=std_logic lab=VDD,VDD}
C {lab_wire.sym} 560 -90 1 1 {name=p9 sig_type=std_logic lab=SWA,SWA}
C {lab_wire.sym} 360 -90 1 1 {name=p34 sig_type=std_logic lab=SWB,SWB}
C {lab_wire.sym} 760 -90 1 1 {name=p35 sig_type=std_logic lab=VDD,VDD}
C {devices/vsource.sym} -340 -540 0 1 {name=VA value="pwl 0 \{VSS\} 33.33n \{VSS\} 33.33n \{VDD\}"}
C {gnd.sym} -340 -490 0 1 {name=l1 lab=GND}
C {lab_wire.sym} -340 -580 3 1 {name=p36 sig_type=std_logic lab=SWA}
C {devices/vsource.sym} -340 -330 0 1 {name=VB value="pwl 0 \{VSS\} 16.66n \{VSS\} 16.66n \{VDD\}"}
C {gnd.sym} -340 -280 0 1 {name=l3 lab=GND}
C {lab_wire.sym} -340 -370 3 1 {name=p37 sig_type=std_logic lab=SWB}
C {devices/code_shown.sym} -460 -215 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical

"}
C {code.sym} -587.5 -217.5 0 0 {name=CODE only_toplevel=false 
value="
.temp 27

.param VDD = 3.3
.param VSS = 0
.param VRP = 2.1
.param VRN = 1.2

.param sw_stat_global = 0
.param sw_stat_mismatch = 0

.save all

.control

* >> Variables <<
let tstop = 50n
let tstep = tstop/10k

* Reference voltages:
let VRPN = 0.9

* Setting time
let vlim_set = 1m
let Tclk = 1/(60Meg)
let ton = 2*Tclk

* Run transient analysis
tran $&tstep $&tstop

* Differential voltages
let vrxy0 = v(VRX0)-v(VRY0)
let vrxy1 = v(VRX1)-v(VRY1)

* Final Values
meas tran vrxy0_final FIND vrxy0 AT=tstop
meas tran vrxy1_final FIND vrxy1 AT=tstop
meas tran vcm_final FIND V(VCM) AT=tstop

* Errors
let err0 = abs(vrxy0 - vrxy0_final)
let err1 = abs(vrxy1 - vrxy1_final)
let errCM = abs(V(VCM) - vcm_final)

* Setting time
meas tran t0 WHEN err0=$&vlim_set CROSS=LAST
let ts0 = t0 - ton

meas tran t1 WHEN err1=$&vlim_set CROSS=LAST
let ts1 = t1 - ton

meas tran tCM WHEN errCM=$&vlim_set CROSS=LAST
let tsCM = tCM - ton

* Percentage of comparison clock
let ts0_ratio = ts0/Tclk
let ts1_ratio = ts1/Tclk
let tsCM_ratio = tsCM/Tclk

* Power and resistance estimation
let IVRP = -1*i(VREFP)
let IVRN = -1*i(VREFN)
meas tran I_VRP_avg AVG IVRP from=tstep to=tstop
meas tran I_VRN_avg AVG IVRN from=tstep to=tstop
let P_VRP_avg = I_VRP_avg*2.1
let P_VRN_avg = I_VRN_avg*1.2
let P_T_avg = P_VRP_avg + P_VRN_avg
let RDAC = (VRPN^2)/P_T_avg
let Ru = RDAC/8

* Print outputs
echo ============================================================
echo POWER_AND_RESISTANCE
echo ============================================================

echo P_T_avg = $&P_T_avg W
echo RDAC    = $&RDAC Ohm
echo Ru      = $&Ru Ohm

echo
echo ============================================================
echo SETTLING_TIME_RESULTS
echo ============================================================

echo ts0       = $&ts0 s
echo ts1       = $&ts1 s
echo tsCM      = $&tsCM s

echo

echo ts0/Tclk  = $&ts0_ratio cycles
echo ts1/Tclk  = $&ts1_ratio cycles
echo tsCM/Tclk = $&tsCM_ratio cycles

* Plots
*plot v(VX) v(VY)
*plot v(CP0) v(CP1) v(CN0) v(CN1)
plot v(VRX1) v(VRX0) V(VCM) v(VRY0) v(VRY1)
plot vrxy0 vrxy1

.endc
"}
