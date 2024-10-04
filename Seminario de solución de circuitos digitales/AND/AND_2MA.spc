********************************************************************************
* SPICE netlist generated by HiPer Verify's NetList Extractor
*
* Extract Date/Time:	Fri Oct 04 12:13:31 2024
* L-Edit Version:		L-Edit Win64 16.01.20130408.01:22:50
*
* Rule Set Name:		
* TDB File Name:		C:\Users\arnol\OneDrive\Documents\GitHub\Digital-Design\Seminario de soluci�n de circuitos digitales\AND\SetupONsemiC5 (1).tdb
* Command File:		C:\Users\arnol\OneDrive\Documents\GitHub\Digital-Design\Seminario de soluci�n de circuitos digitales\AND\mamis05.ext
* Cell Name:			AND_2MA
* Write Flat:			NO
********************************************************************************

.include modelos.sp

****************************************
.SUBCKT NOT 1 3 GND_ VDD
M1 GND_ 1 2 GND_ CMOSN l=6e-007 w=7.5e-006  $ (21.84 -7.3212 22.44 0.1788)
M2 VDD 1 2 3 CMOSP l=6e-007 w=2.67e-005  $ (21.84 25.0788 22.44 51.7788)
* Device count
* M(CMOSN)		1
* M(CMOSP)		1
* Number of devices:	2
* Number of nodes:	5
.ENDS

****************************************
.SUBCKT nand2ma_real 3 5 GND_ VDD
M1 1 2 3 GND_ CMOSN l=6e-007 w=7.5e-006  $ (74.115 -26.9412 74.715 -19.4412)
M2 GND_ 4 1 GND_ CMOSN l=6e-007 w=7.5e-006  $ (76.545 -26.9412 77.145 -19.4412)
M3 3 2 VDD 5 CMOSP l=6e-007 w=2.22e-005  $ (74.115 1.14 74.715 23.34)
M4 VDD 4 3 5 CMOSP l=6e-007 w=2.22e-005  $ (76.545 1.14 77.145 23.34)
* Device count
* M(CMOSN)		2
* M(CMOSP)		2
* Number of devices:	4
* Number of nodes:	7
.ENDS

****************************************

XU890 1 VDD GND_ VDD NOT  $ (83.13 -41.76 92.13 33.24) $T=65.49 -25.47 0 0 1
XU888 1 VDD GND_ VDD nand2ma_real  $ (68.13 -41.76 83.13 33.24) $T=0 0 0 0 1
* Top level device count
* Number of devices:	0
* Number of nodes:	3


* Cumulative top level and subcircuit device count
* M(CMOSN)		3
* M(CMOSP)		3
* Number of devices:	6
* Number of nodes:	15
