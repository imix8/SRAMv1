* SPICE NETLIST
***************************************

.SUBCKT SRAM !BL WL BL gnd! vdd!
** N=7 EP=5 IP=0 FDC=6
M0 4 WL !BL gnd! NMOS_VTL L=5e-08 W=1.75e-07 AD=2.8e-14 AS=2.8e-14 PD=6.7e-07 PS=6.7e-07 $X=34590 $Y=14570 $D=1
M1 4 3 gnd! gnd! NMOS_VTL L=5e-08 W=2e-07 AD=3.55e-14 AS=3.2e-14 PD=7.55e-07 PS=7.2e-07 $X=35460 $Y=14550 $D=1
M2 3 4 gnd! gnd! NMOS_VTL L=5e-08 W=2e-07 AD=3.2e-14 AS=3.2e-14 PD=7.2e-07 PS=7.2e-07 $X=36330 $Y=14550 $D=1
M3 BL WL 3 gnd! NMOS_VTL L=5e-08 W=1.75e-07 AD=2.8e-14 AS=2.8e-14 PD=6.7e-07 PS=6.7e-07 $X=37200 $Y=14570 $D=1
M4 4 3 vdd! vdd! PMOS_VTL L=5e-08 W=1e-07 AD=1.6e-14 AS=1.6e-14 PD=5.2e-07 PS=5.2e-07 $X=35460 $Y=16070 $D=0
M5 3 4 vdd! vdd! PMOS_VTL L=5e-08 W=1e-07 AD=1.6e-14 AS=1.6e-14 PD=5.2e-07 PS=5.2e-07 $X=36330 $Y=16070 $D=0
.ENDS
***************************************
