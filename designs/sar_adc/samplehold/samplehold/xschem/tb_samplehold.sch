v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 410 -500 410 -470 {lab=VSS}
N 540 -580 610 -580 {lab=Vout}
N 410 -690 410 -660 {lab=VDD}
N 230 -580 300 -580 {lab=Vin}
N 230 -540 300 -540 {lab=CLK}
N 620 -240 620 -210 {lab=GND}
N 620 -360 620 -300 {lab=VDD}
N 700 -240 700 -210 {lab=GND}
N 700 -360 700 -300 {lab=VSS}
N 200 -240 200 -210 {lab=GND}
N 200 -360 200 -300 {lab=Vin}
N 380 -240 380 -210 {lab=GND}
N 380 -360 380 -300 {lab=CLK}
N 580 -520 580 -490 {lab=GND}
C {devices/vsource.sym} 620 -270 0 0 {name=V1 value=3.3
}
C {devices/gnd.sym} 620 -210 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 700 -270 0 0 {name=V2 value=0

}
C {devices/gnd.sym} 700 -210 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 200 -270 0 0 {name=V3 value= "SIN(1.65 1.65 2.5Meg)"
}
C {devices/gnd.sym} 200 -210 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 620 -360 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 700 -360 0 0 {name=p3 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 200 -360 0 0 {name=p5 sig_type=std_logic lab=Vin
}
C {devices/code_shown.sym} 785 -265 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code.sym} 805 -615 0 0 {name=s1 only_toplevel=false value="

.control
    save all
    tran 0.1n 20u
    setplot tran1
    setscale time
    set wr_singlescale    
    set wr_vecnames       
    option numdgt=6       
    wrdata ~/Desktop/sample_holf/datos_simulacion.txt vout vin
    plot vout vin
    plot clk

.endc

"}
C {lab_wire.sym} 410 -690 0 0 {name=p2 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 410 -470 2 0 {name=p4 sig_type=std_logic lab=VSS

}
C {noconn.sym} 610 -580 2 0 {name=l4}
C {lab_wire.sym} 600 -580 0 0 {name=p6 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 230 -580 0 0 {name=p7 sig_type=std_logic lab=Vin
}
C {devices/vsource.sym} 380 -270 0 0 {name=V4 value="PULSE(0 3.3 0 5p 5p 100n 200n)"
}
C {devices/gnd.sym} 380 -210 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 380 -360 0 0 {name=p8 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} 230 -540 0 0 {name=p9 sig_type=std_logic lab=CLK
}
C {capa.sym} 580 -550 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 580 -490 0 0 {name=l6 lab=GND
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
C {sar_adc/samplehold/samplehold/xschem/samplehold.sym} 250 -390 0 0 {name=x1}
