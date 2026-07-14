v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 500 -500 500 -470 {lab=VSS}
N 580 -550 650 -550 {lab=Vout}
N 500 -630 500 -600 {lab=VDD}
N 350 -550 420 -550 {lab=Vin}
N 350 -530 420 -530 {lab=CLK}
N 560 -260 560 -230 {lab=GND}
N 560 -380 560 -320 {lab=VDD}
N 660 -260 660 -230 {lab=GND}
N 660 -380 660 -320 {lab=VSS}
N 90 -260 90 -230 {lab=GND}
N 90 -380 90 -320 {lab=Vin}
N 310 -260 310 -230 {lab=GND}
N 310 -380 310 -320 {lab=CLK}
N 620 -490 620 -460 {lab=GND}
N 190 -730 190 -670 {lab=VDD}
N 190 -610 190 -530 {lab=CLKN}
N 110 -640 150 -640 {lab=CLK}
N 110 -640 110 -570 {lab=CLK}
N 110 -570 110 -500 {lab=CLK}
N 110 -500 150 -500 {lab=CLK}
N 190 -640 290 -640 {lab=VDD}
N 290 -690 290 -640 {lab=VDD}
N 190 -690 290 -690 {lab=VDD}
N 190 -500 290 -500 {lab=VSS}
N 290 -500 290 -450 {lab=VSS}
N 190 -450 290 -450 {lab=VSS}
N 30 -570 110 -570 {lab=CLK}
N 190 -470 190 -410 {lab=VSS}
N 190 -570 420 -570 {lab=CLKN}
C {devices/vsource.sym} 560 -290 0 0 {name=VSP value=\{VDD\}
}
C {devices/gnd.sym} 560 -230 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 660 -290 0 0 {name=VSN value=0

}
C {devices/gnd.sym} 660 -230 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 90 -290 0 0 {name=VSIN value= "SIN(\{VDD/2\} \{VDD/2\} \{fin\} 0 )"
}
C {devices/gnd.sym} 90 -230 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 560 -380 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 660 -380 0 0 {name=p3 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 90 -380 0 0 {name=p5 sig_type=std_logic lab=Vin
}
C {devices/code_shown.sym} 35 -155 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical

"}
C {code.sym} 585 -160 0 0 {name=s1 only_toplevel=false value="

* Sampling clock
.param Fs = 5Meg
.param ton = Ts/12

* Input parameters
.param Ts = 1/Fs
.param Ns = 1024
.param Nc = 103
.param fin = Nc/Ns*Fs

* Test-bench parameters
.temp 27
.param VDD = 3.3
.param Cload = 1p

.save all

.control

* Local variables for .control
let Fs = 5Meg
let Ns = 1024
let Nspare = 5

let tstep = 1/(Fs*250)
let tstop = (Ns + Nspare)/Fs

* Transient simulation
tran $&tstep $&tstop

* Power calculation
let P_DD=-v(vdd)*i(vsp)
meas tran P_avg AVG P_DD from=0 to=tstop
print P_avg

linearize v(vout) v(vin) v(clk) P_DD
wrdata tb_dac_sw_1state.csv v(vin) v(vout) v(clk) P_DD

plot v(vin) v(vout)
plot v(vin) v(vout) xl 0 4u

.endc

"}
C {lab_wire.sym} 500 -630 0 0 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 500 -470 2 0 {name=p4 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 640 -550 0 1 {name=p6 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 350 -550 0 0 {name=p7 sig_type=std_logic lab=Vin
}
C {devices/vsource.sym} 310 -290 0 0 {name=VCLK value="PULSE(0 \{VDD\} 0 1n 1n \{ton\} \{Ts\})"
}
C {devices/gnd.sym} 310 -230 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 310 -380 0 0 {name=p8 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 350 -530 0 0 {name=p9 sig_type=std_logic lab=CLK
}
C {devices/gnd.sym} 620 -460 0 0 {name=l6 lab=GND
value="

.control
  save all            
  tran 0.1n 500u       
  setplot tran1       
  linearize v(vout) V(Vin)  
  set specwindow=blackman 
  fft v(vout)         
  plot mag(v(vout)) xl 0 2Meg        
  plot db(mag(v(vout))) xl 0 2Meg    
  plot db(mag(v(vin))) xl 0 2Meg 
.endc

"}
C {capa.sym} 620 -520 0 0 {name=C1
m=1
value=\{Cload\}

footprint=1206
device="ceramic capacitor"}
C {designs/sar_adc/dac/dac_sw_1state/xschem/dac_sw_1state.sym} 500 -550 0 0 {name=xSW}
C {symbols/nfet_03v3.sym} 170 -500 0 0 {name=MIN1
L=0.28u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 170 -640 0 0 {name=MIP1
L=0.28u
W=0.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 350 -570 0 0 {name=p12 sig_type=std_logic lab=CLKN}
C {lab_wire.sym} 80 -570 0 0 {name=p10 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 190 -710 0 0 {name=p11 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 190 -430 0 0 {name=p13 sig_type=std_logic lab=VSS

}
