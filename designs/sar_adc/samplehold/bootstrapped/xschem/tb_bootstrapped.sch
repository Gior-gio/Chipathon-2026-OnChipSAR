v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 540 -510 540 -480 {lab=VSS}
N 620 -560 690 -560 {lab=Vout}
N 540 -640 540 -610 {lab=VDD}
N 390 -560 460 -560 {lab=Vin}
N 390 -540 460 -540 {lab=CLK}
N 720 -240 720 -210 {lab=GND}
N 720 -360 720 -300 {lab=VDD}
N 820 -240 820 -210 {lab=GND}
N 820 -360 820 -300 {lab=VSS}
N 260 -240 260 -210 {lab=GND}
N 260 -360 260 -300 {lab=Vin}
N 470 -240 470 -210 {lab=GND}
N 470 -360 470 -300 {lab=CLK}
N 660 -500 660 -470 {lab=GND}
C {devices/vsource.sym} 720 -270 0 0 {name=V1 value=\{VDD\}
}
C {devices/gnd.sym} 720 -210 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 820 -270 0 0 {name=V2 value=0

}
C {devices/gnd.sym} 820 -210 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 260 -270 0 0 {name=V3 value= "SIN(\{VDD/2\} \{VDD/2\} \{fin\} 0 )"
}
C {devices/gnd.sym} 260 -210 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 720 -360 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 820 -360 0 0 {name=p3 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 260 -360 0 0 {name=p5 sig_type=std_logic lab=Vin
}
C {devices/code_shown.sym} 915 -275 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice ss
"}
C {code.sym} 805 -600 0 0 {name=s1 only_toplevel=false value="

* Sampling clock
.param Fs = 5Meg
.param ton = Ts/12

* Input parameters
.param Ts = 1/Fs
.param Ns = 1024
.param Nc = 509
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

let tstep = 1/(Fs*240)
let tstop = (Ns + Nspare)/Fs

* Transient simulation
tran $&tstep $&tstop

linearize v(vout) v(vin) v(clk)
wrdata tb_bootstrapped.csv v(vin) v(vout) v(clk)

plot v(vin) v(vout)
plot v(vin) v(vout) xl 0 4u

.endc

"}
C {lab_wire.sym} 540 -640 0 0 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 540 -480 2 0 {name=p4 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 680 -560 0 1 {name=p6 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 390 -560 0 0 {name=p7 sig_type=std_logic lab=Vin
}
C {devices/vsource.sym} 470 -270 0 0 {name=V4 value="PULSE(0 \{VDD\} 0 1n 1n \{ton\} \{Ts\})"
}
C {devices/gnd.sym} 470 -210 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 470 -360 0 0 {name=p8 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 390 -540 2 1 {name=p9 sig_type=std_logic lab=CLK
}
C {devices/gnd.sym} 660 -470 0 0 {name=l6 lab=GND
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
C {capa.sym} 660 -530 0 0 {name=C1
m=1
value=\{Cload\}

footprint=1206
device="ceramic capacitor"}
C {designs/sar_adc/samplehold/bootstrapped/xschem/bootstrapped.sym} 540 -560 0 0 {name=x2}
