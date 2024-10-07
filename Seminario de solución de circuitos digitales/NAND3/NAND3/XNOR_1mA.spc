********************************************************************************
* SPICE netlist generated by HiPer Verify's NetList Extractor
*
* Extract Date/Time:	Sun Oct 06 21:31:50 2024
* L-Edit Version:		L-Edit Win64 16.01.20130408.01:22:50
*
* Rule Set Name:		
* TDB File Name:		C:\Daniel\UDG\7mo\Seminario de soluci�n de circuitos digitales\NAND3\NAND3\SetupONsemiC5.tdb
* Command File:		C:\Daniel\UDG\7mo\Seminario de soluci�n de circuitos digitales\NAND3\NAND3\mamis05.ext
* Cell Name:			XNOR_1mA
* Write Flat:			NO
********************************************************************************

.include modelos.sp

****************************************

M1 n2 n1 GND_ GND_ CMOSN l=6e-007 w=4.2e-006  $ (5.985 5.2188 6.585 9.4188)
M2 GND_ A n2 GND_ CMOSN l=6e-007 w=4.2e-006  $ (8.415 5.2188 9.015 9.4188)
M3 n1 A GND_ GND_ CMOSN l=6e-007 w=4.2e-006  $ (20.985 5.2188 21.585 9.4188)
M4 GND_ B n1 GND_ CMOSN l=6e-007 w=4.2e-006  $ (23.415 5.2188 24.015 9.4188)
M5 n3 B GND_ GND_ CMOSN l=6e-007 w=4.2e-006  $ (35.985 5.2188 36.585 9.4188)
M6 GND_ n1 n3 GND_ CMOSN l=6e-007 w=4.2e-006  $ (38.415 5.2188 39.015 9.4188)
M7 x n3 GND_ GND_ CMOSN l=6e-007 w=4.2e-006  $ (50.985 5.2188 51.585 9.4188)
M8 GND_ n2 x GND_ CMOSN l=6e-007 w=4.2e-006  $ (53.415 5.2188 54.015 9.4188)
M9 1 n1 n2 VDD CMOSP l=6e-007 w=1.35e-005  $ (5.985 25.47 6.585 38.97)
M10 VDD A 1 VDD CMOSP l=6e-007 w=1.35e-005  $ (8.415 25.47 9.015 38.97)
M11 2 A VDD VDD CMOSP l=6e-007 w=1.35e-005  $ (20.985 25.47 21.585 38.97)
M12 n1 B 2 VDD CMOSP l=6e-007 w=1.35e-005  $ (23.415 25.47 24.015 38.97)
M13 3 B n3 VDD CMOSP l=6e-007 w=1.35e-005  $ (35.985 25.47 36.585 38.97)
M14 VDD n1 3 VDD CMOSP l=6e-007 w=1.35e-005  $ (38.415 25.47 39.015 38.97)
M15 4 n3 x VDD CMOSP l=6e-007 w=1.35e-005  $ (50.985 25.47 51.585 38.97)
M16 VDD n2 4 VDD CMOSP l=6e-007 w=1.35e-005  $ (53.415 25.47 54.015 38.97)
* Top level device count
* M(CMOSN)		8
* M(CMOSP)		8
* Number of devices:	16
* Number of nodes:	12


