* SPICE NETLIST
***************************************

.SUBCKT SRAM_Optimized gnd! !BL BL WL vdd!
** N=7 EP=5 IP=0 FDC=6
M0 5 WL !BL gnd! NMOS_VTL L=5e-08 W=1.75e-07 AD=8.51875e-14 AS=4.1125e-14 PD=1.27e-06 PS=8.2e-07 $X=505 $Y=690 $D=1
M1 gnd! 7 5 gnd! NMOS_VTL L=5e-08 W=2e-07 AD=8.65375e-14 AS=8.51875e-14 PD=1.605e-06 PS=1.27e-06 $X=1230 $Y=935 $D=1
M2 7 5 gnd! gnd! NMOS_VTL L=5e-08 W=2e-07 AD=8.16875e-14 AS=8.65375e-14 PD=1.235e-06 PS=1.605e-06 $X=1820 $Y=935 $D=1
M3 7 WL BL gnd! NMOS_VTL L=5e-08 W=1.75e-07 AD=8.16875e-14 AS=4.1125e-14 PD=1.235e-06 PS=8.2e-07 $X=2260 $Y=690 $D=1
M4 vdd! 7 5 vdd! PMOS_VTL L=5e-08 W=1e-07 AD=2.45e-14 AS=1.625e-14 PD=6.9e-07 PS=5.25e-07 $X=1230 $Y=2380 $D=0
M5 7 5 vdd! vdd! PMOS_VTL L=5e-08 W=1e-07 AD=1.725e-14 AS=2.45e-14 PD=5.45e-07 PS=6.9e-07 $X=1820 $Y=2380 $D=0
.ENDS
***************************************
