* SPICE NETLIST
***************************************

.SUBCKT SRAM !BL WL gnd! vdd! BL
** N=7 EP=5 IP=0 FDC=6
M0 1 WL !BL gnd! NMOS_VTL L=5e-08 W=1.75e-07 AD=1.79375e-14 AS=1.79375e-14 PD=5.55e-07 PS=5.55e-07 $X=695 $Y=330 $D=1
M1 2 1 gnd! gnd! NMOS_VTL L=5e-08 W=2e-07 AD=2.05e-14 AS=2.05e-14 PD=6.05e-07 PS=6.05e-07 $X=1390 $Y=310 $D=1
M2 gnd! 2 1 gnd! NMOS_VTL L=5e-08 W=2e-07 AD=2.05e-14 AS=2.05e-14 PD=6.05e-07 PS=6.05e-07 $X=2160 $Y=310 $D=1
M3 BL WL 2 gnd! NMOS_VTL L=5e-08 W=1.75e-07 AD=1.79375e-14 AS=1.79375e-14 PD=5.55e-07 PS=5.55e-07 $X=2840 $Y=340 $D=1
M4 2 1 vdd! vdd! PMOS_VTL L=5e-08 W=1e-07 AD=1.025e-14 AS=1.025e-14 PD=4.05e-07 PS=4.05e-07 $X=1390 $Y=1490 $D=0
M5 vdd! 2 1 vdd! PMOS_VTL L=5e-08 W=1e-07 AD=1.025e-14 AS=1.025e-14 PD=4.05e-07 PS=4.05e-07 $X=2160 $Y=1490 $D=0
.ENDS
***************************************
