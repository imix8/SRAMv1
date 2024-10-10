
.option post INGOLD=2

.param VDDC = 1.0V
.param LoadCap = 10f

** Temperature
.TEMP 25

** simulation step, time, and Monte Carlo simulation count
.tran 1p 6n sweep monte=100

.param pdLn = 5n
.param pdWn = 25n
.param pdVthn = 0.0471

.param pdLp = 5n
.param pdWp = 50n
.param pdVthp = 0.0423

**L,W,and Vth variations;assumed to be gaussian distribution

**for MM0(PMOS)
.param dLp0 = agauss (0, pdLp, 1)
.param dWp0 = agauss (0, pdWp, 1)
.param dVthp0 = agauss (0, pdVthp, 1)

**for MM1(NMOS)
.param dLn0 = agauss (0, pdLn, 1)
.param dWn0 = agauss (0, pdWn, 1)
.param dVthn0 = agauss (0, pdVthn, 1)

**for MM2(NMOS)
*.param dLn1 = agauss (0, pdLn, 1)
*.param dWn1 = agauss (0, pdWn, 1)
*.param dVthn1 = agauss (0, pdVthn, 1)

**for MM3(NMOS)
*.param dLn2 = agauss (0, pdLn, 1)
*.param dWn2 = agauss (0, pdWn, 1)
*.param dVthn2 = agauss (0, pdVthn, 1)

**Add params as many as the number of transistors

VD VDD 0 VDDC
VA Vin 0 Pulse (0 VDDC 1n 50p 50p 2.45n 5n)
CL Vout 0 LoadCap

.MEASURE TRAN tf TRIG V(Vin) VAL=0.5 RISE=1 targ V(Vout) VAL=0.5 FALL=1
.MEASURE TRAN tr TRIG V(Vin) VAL=0.5 FALL=1 targ V(Vout) VAL=0.5 RISE=1

.include './INC/NMOS_VTL.inc'
.include './INC/PMOS_VTL.inc'
.include 'INVX1.monte.netlist'

x0 Vin Vout 0 VDD INVX1
+ idLp0=dLp0 idWp0=dWp0 idVthp0=dVthp0
+ idLn0=dLn0 idWn0=dWn0 idVthn0=dVthn0

.end
