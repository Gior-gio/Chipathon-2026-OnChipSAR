v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 350 -230 350 -200 {lab=VS}
N 30 -230 30 -200 {lab=0}
N 30 -330 30 -290 {lab=VD}
N 150 -230 150 -200 {lab=0}
N 150 -330 150 -290 {lab=VB}
N 400 -260 400 -230 {lab=0}
N 350 -260 400 -260 {lab=0}
N 290 -260 310 -260 {lab=VB}
N 350 -340 350 -290 {lab=VD}
N 90 -230 90 -200 {lab=0}
N 90 -330 90 -290 {lab=VS}
N 820 -240 820 -210 {lab=VSP}
N 820 -270 870 -270 {lab=VDP}
N 760 -270 780 -270 {lab=0}
N 820 -350 820 -300 {lab=VDP}
N 760 -270 760 -260 {lab=0}
N 640 -230 640 -200 {lab=0}
N 640 -330 640 -290 {lab=VDP}
N 700 -230 700 -200 {lab=0}
N 700 -330 700 -290 {lab=VSP}
N 870 -300 870 -270 {lab=VDP}
N 820 -300 870 -300 {lab=VDP}
C {symbols/nfet_03v3.sym} 330 -260 0 0 {name=M1
L=0.28u
W=20u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {vsource.sym} 30 -260 0 0 {name=V1 value=1.66 savecurrent=false}
C {gnd.sym} 30 -200 0 0 {name=l2 lab=0}
C {vsource.sym} 150 -260 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 150 -200 0 0 {name=l3 lab=0}
C {lab_wire.sym} 30 -330 0 0 {name=p1 sig_type=std_logic lab=VD}
C {lab_wire.sym} 350 -340 0 0 {name=p2 sig_type=std_logic lab=VD}
C {lab_wire.sym} 150 -330 0 0 {name=p3 sig_type=std_logic lab=VB}
C {lab_wire.sym} 290 -260 0 0 {name=p4 sig_type=std_logic lab=VB}
C {devices/code_shown.sym} 30 -70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code.sym} 465 -315 0 0 {name=s1 only_toplevel=false value="


.control
  save all            
  tran 0.1n 20u
  %plot (vd-vs)/i(v3)
  %plot vd-vs
  let resn=mean ((vd-vs)/i(v3))
  let resp=mean ((vdp-vsp)/i(v5))
 print resp  
print resn
.endc

"

"}
C {vsource.sym} 90 -260 0 0 {name=V3 value=1.65 savecurrent=false}
C {gnd.sym} 90 -200 0 0 {name=l4 lab=0}
C {lab_wire.sym} 350 -200 2 1 {name=p6 sig_type=std_logic lab=VS}
C {lab_wire.sym} 90 -330 0 0 {name=p5 sig_type=std_logic lab=VS}
C {gnd.sym} 400 -230 0 0 {name=l1 lab=0}
C {symbols/pfet_03v3.sym} 800 -270 2 1 {name=MP3
L=0.28u
W=10u
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
C {gnd.sym} 760 -260 0 0 {name=l5 lab=0}
C {vsource.sym} 640 -260 0 0 {name=V4 value=1.65 savecurrent=false}
C {gnd.sym} 640 -200 0 0 {name=l6 lab=0}
C {lab_wire.sym} 640 -330 0 0 {name=p8 sig_type=std_logic lab=VDP}
C {vsource.sym} 700 -260 0 0 {name=V5 value=1.66 savecurrent=false}
C {gnd.sym} 700 -200 0 0 {name=l7 lab=0}
C {lab_wire.sym} 700 -330 0 0 {name=p10 sig_type=std_logic lab=VSP}
C {lab_wire.sym} 820 -210 0 0 {name=p7 sig_type=std_logic lab=VSP}
C {lab_wire.sym} 820 -350 0 0 {name=p9 sig_type=std_logic lab=VDP}
