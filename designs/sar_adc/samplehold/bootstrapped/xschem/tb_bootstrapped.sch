v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 490 -480 490 -450 {lab=VSS}
N 620 -560 690 -560 {lab=Vout}
N 490 -670 490 -640 {lab=VDD}
N 310 -560 380 -560 {lab=Vin}
N 310 -520 380 -520 {lab=CLK}
N 730 -240 730 -210 {lab=GND}
N 730 -360 730 -300 {lab=VDD}
N 810 -240 810 -210 {lab=GND}
N 810 -360 810 -300 {lab=VSS}
N 260 -240 260 -210 {lab=GND}
N 260 -360 260 -300 {lab=Vin}
N 470 -240 470 -210 {lab=GND}
N 470 -360 470 -300 {lab=CLK}
N 660 -500 660 -470 {lab=GND}
C {devices/vsource.sym} 730 -270 0 0 {name=V1 value=3.3
}
C {devices/gnd.sym} 730 -210 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 810 -270 0 0 {name=V2 value=0

}
C {devices/gnd.sym} 810 -210 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 260 -270 0 0 {name=V3 value= "SIN(1.65 1.65 \{fin\} 0 )"
}
C {devices/gnd.sym} 260 -210 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 730 -360 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 810 -360 0 0 {name=p3 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 260 -360 0 0 {name=p5 sig_type=std_logic lab=Vin
}
C {devices/code_shown.sym} 915 -275 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code.sym} 805 -600 0 0 {name=s1 only_toplevel=false value="
.param Fs = 5Meg
.param ton=periodo/2
.param periodo=1/fs
.param Ns = 1024
.param Nc = 103
.param fin = Nc/Ns*Fs


.control
    save all
    
    tran 0.2n 204.8u
    fourier  \{fin\} v(vout)
    plot v(vout) v(vin) xl 0 4u
    setplot tran1
    setscale time
    set wr_singlescale    
    set wr_vecnames       
    option numdgt=6       
    wrdata ~/Desktop/sample_holf/datos_simulacion.txt vout vin
    
    linearize v(vout) v(vin)
    set specwindow=Blackman
    fft v(vout) v(vin)
    plot db(mag(v(vout))) xl 100k 2.5Meg

.endc

"}
C {lab_wire.sym} 490 -670 0 0 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 490 -450 2 0 {name=p4 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 680 -560 0 1 {name=p6 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 310 -560 0 0 {name=p7 sig_type=std_logic lab=Vin
}
C {devices/vsource.sym} 470 -270 0 0 {name=V4 value="PULSE(3.3 0 0 1n 1n \{ton\} \{periodo\})"
}
C {devices/gnd.sym} 470 -210 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 470 -360 0 0 {name=p8 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 310 -520 0 0 {name=p9 sig_type=std_logic lab=CLK
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
value=1p

footprint=1206
device="ceramic capacitor"}
C {sar_adc/samplehold/bootstrapped/xschem/bootstrapped.sym} 330 -370 0 0 {name=x1}
