* SPICE NETLIST
***************************************

.SUBCKT INVX1 A gnd vdd Y
** N=4 EP=4 IP=0 FDC=2
M0 Y A gnd gnd NMOS_VTL L=5e-08 W=2.5e-07 AD=2.625e-14 AS=2.625e-14 PD=7.1e-07 PS=7.1e-07 $X=525 $Y=355 $D=1
M1 Y A vdd vdd PMOS_VTL L=5e-08 W=5e-07 AD=5.25e-14 AS=5.25e-14 PD=1.21e-06 PS=1.21e-06 $X=525 $Y=2580 $D=0
.ENDS
***************************************
