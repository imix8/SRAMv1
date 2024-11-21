* SPICE NETLIST
***************************************

.SUBCKT SRAM !BL gnd! BL WL vdd!
** N=7 EP=5 IP=0 FDC=6
M0 6 WL !BL gnd! NMOS_VTL L=5e-08 W=1.75e-07 AD=7.9125e-14 AS=2.8e-14 PD=1.24e-06 PS=6.7e-07 $X=450 $Y=670 $D=1
M1 gnd! 7 6 gnd! NMOS_VTL L=5e-08 W=2e-07 AD=8.05e-14 AS=7.9125e-14 PD=1.61e-06 PS=1.24e-06 $X=900 $Y=1160 $D=1
M2 7 6 gnd! gnd! NMOS_VTL L=5e-08 W=2e-07 AD=7.9125e-14 AS=8.05e-14 PD=1.24e-06 PS=1.61e-06 $X=1400 $Y=1160 $D=1
M3 7 WL BL gnd! NMOS_VTL L=5e-08 W=1.75e-07 AD=7.9125e-14 AS=2.8e-14 PD=1.24e-06 PS=6.7e-07 $X=1600 $Y=670 $D=1
M4 vdd! 7 6 vdd! PMOS_VTL L=5e-08 W=1e-07 AD=3.85e-14 AS=2.1e-14 PD=9.7e-07 PS=6.2e-07 $X=900 $Y=2230 $D=0
M5 7 6 vdd! vdd! PMOS_VTL L=5e-08 W=1e-07 AD=2.1e-14 AS=3.85e-14 PD=6.2e-07 PS=9.7e-07 $X=1400 $Y=2230 $D=0
.ENDS
***************************************
