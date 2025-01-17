EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:PortExtender-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCP23S17 U1
U 1 1 5B79292F
P 4150 3300
F 0 "U1" H 4050 4325 50  0000 R CNN
F 1 "MCP23S17" H 4050 4250 50  0000 R CNN
F 2 "Housings_SOIC:SOIC-28W_7.5x18.7mm_Pitch1.27mm" H 4200 2350 50  0001 L CNN
F 3 "" H 4400 4300 50  0001 C CNN
	1    4150 3300
	1    0    0    -1  
$EndComp
Text HLabel 6500 3150 0    60   Input ~ 0
SCK
Text HLabel 6500 2950 0    60   Input ~ 0
Reset
Text HLabel 6500 3050 0    60   Input ~ 0
Mo
Text HLabel 6500 3250 0    60   Input ~ 0
CS
Text HLabel 6500 3350 0    60   Input ~ 0
Mi
$Comp
L GND #PWR01
U 1 1 5B792AF0
P 6050 3650
F 0 "#PWR01" H 6050 3400 50  0001 C CNN
F 1 "GND" H 6050 3500 50  0000 C CNN
F 2 "" H 6050 3650 50  0001 C CNN
F 3 "" H 6050 3650 50  0001 C CNN
	1    6050 3650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5B792B13
P 6300 3800
F 0 "#PWR02" H 6300 3650 50  0001 C CNN
F 1 "VCC" H 6300 3950 50  0000 C CNN
F 2 "" H 6300 3800 50  0001 C CNN
F 3 "" H 6300 3800 50  0001 C CNN
	1    6300 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3450 6050 3450
Wire Wire Line
	6050 3450 6050 3650
Wire Wire Line
	6500 3550 6500 3950
Wire Wire Line
	6500 3800 6300 3800
Text HLabel 4650 3400 2    60   Input ~ 0
CS
Text HLabel 4650 3500 2    60   Input ~ 0
SCK
Text HLabel 5050 3600 2    60   Input ~ 0
Mi
Text HLabel 4650 3700 2    60   Input ~ 0
Mo
$Comp
L R R1
U 1 1 5B792C0F
P 4850 3600
F 0 "R1" V 4930 3600 50  0000 C CNN
F 1 "100" V 4850 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 3600 50  0001 C CNN
F 3 "" H 4850 3600 50  0001 C CNN
	1    4850 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3600 5000 3600
Wire Wire Line
	4700 3600 4650 3600
Text HLabel 4650 2500 2    60   Input ~ 0
Reset
$Comp
L GND #PWR03
U 1 1 5B792CE7
P 4150 4400
F 0 "#PWR03" H 4150 4150 50  0001 C CNN
F 1 "GND" H 4150 4250 50  0000 C CNN
F 2 "" H 4150 4400 50  0001 C CNN
F 3 "" H 4150 4400 50  0001 C CNN
	1    4150 4400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5B792CFB
P 4150 2150
F 0 "#PWR04" H 4150 2000 50  0001 C CNN
F 1 "VCC" H 4150 2300 50  0000 C CNN
F 2 "" H 4150 2150 50  0001 C CNN
F 3 "" H 4150 2150 50  0001 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2150 4150 2300
Wire Wire Line
	4150 4300 4150 4400
$Comp
L C C1
U 1 1 5B7931F0
P 6500 4100
F 0 "C1" H 6525 4200 50  0000 L CNN
F 1 "C" H 6525 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6538 3950 50  0001 C CNN
F 3 "" H 6500 4100 50  0001 C CNN
	1    6500 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5B79321D
P 6500 4250
F 0 "#PWR05" H 6500 4000 50  0001 C CNN
F 1 "GND" H 6500 4100 50  0000 C CNN
F 2 "" H 6500 4250 50  0001 C CNN
F 3 "" H 6500 4250 50  0001 C CNN
	1    6500 4250
	1    0    0    -1  
$EndComp
Connection ~ 6500 3800
$Comp
L Conn_01x10_Female J2
U 1 1 5B7932BE
P 2400 3200
F 0 "J2" H 2400 3700 50  0000 C CNN
F 1 "Conn_01x10_Female" H 2400 2600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x10_Pitch2.54mm" H 2400 3200 50  0001 C CNN
F 3 "" H 2400 3200 50  0001 C CNN
	1    2400 3200
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x04_Female J3
U 1 1 5B793301
P 2400 4350
F 0 "J3" H 2400 4550 50  0000 C CNN
F 1 "Conn_01x04_Female" H 2400 4050 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x04_Pitch2.54mm" H 2400 4350 50  0001 C CNN
F 3 "" H 2400 4350 50  0001 C CNN
	1    2400 4350
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x05_Female J4
U 1 1 5B79333C
P 2400 5100
F 0 "J4" H 2400 5400 50  0000 C CNN
F 1 "Conn_01x05_Female" H 2400 4800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x05_Pitch2.54mm" H 2400 5100 50  0001 C CNN
F 3 "" H 2400 5100 50  0001 C CNN
	1    2400 5100
	-1   0    0    1   
$EndComp
Text HLabel 3650 2500 0    60   Input ~ 0
B0
Text HLabel 3650 2600 0    60   Input ~ 0
B1
Text HLabel 3650 2700 0    60   Input ~ 0
B2
Text HLabel 3650 2800 0    60   Input ~ 0
B3
Text HLabel 3650 2900 0    60   Input ~ 0
B4
Text HLabel 3650 3000 0    60   Input ~ 0
B5
Text HLabel 3650 3100 0    60   Input ~ 0
B6
Text HLabel 3650 3200 0    60   Input ~ 0
B7
Text HLabel 3650 3400 0    60   Input ~ 0
A0
Text HLabel 3650 3500 0    60   Input ~ 0
A1
Text HLabel 3650 3600 0    60   Input ~ 0
A2
Text HLabel 3650 3700 0    60   Input ~ 0
A3
Text HLabel 3650 3800 0    60   Input ~ 0
A4
Text HLabel 3650 3900 0    60   Input ~ 0
A5
Text HLabel 3650 4000 0    60   Input ~ 0
A6
Text HLabel 3650 4100 0    60   Input ~ 0
A7
$Comp
L R R2
U 1 1 5B793AC7
P 5050 4450
F 0 "R2" V 5130 4450 50  0000 C CNN
F 1 "R" V 5050 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4980 4450 50  0001 C CNN
F 3 "" H 5050 4450 50  0001 C CNN
	1    5050 4450
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5B793B65
P 5050 4750
F 0 "R3" V 5130 4750 50  0000 C CNN
F 1 "R" V 5050 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4980 4750 50  0001 C CNN
F 3 "" H 5050 4750 50  0001 C CNN
	1    5050 4750
	-1   0    0    1   
$EndComp
$Comp
L R R4
U 1 1 5B793C3D
P 5300 4450
F 0 "R4" V 5380 4450 50  0000 C CNN
F 1 "R" V 5300 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5230 4450 50  0001 C CNN
F 3 "" H 5300 4450 50  0001 C CNN
	1    5300 4450
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5B793C43
P 5300 4750
F 0 "R5" V 5380 4750 50  0000 C CNN
F 1 "R" V 5300 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5230 4750 50  0001 C CNN
F 3 "" H 5300 4750 50  0001 C CNN
	1    5300 4750
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 5B793C95
P 5550 4450
F 0 "R6" V 5630 4450 50  0000 C CNN
F 1 "R" V 5550 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5480 4450 50  0001 C CNN
F 3 "" H 5550 4450 50  0001 C CNN
	1    5550 4450
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 5B793C9B
P 5550 4750
F 0 "R7" V 5630 4750 50  0000 C CNN
F 1 "R" V 5550 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5480 4750 50  0001 C CNN
F 3 "" H 5550 4750 50  0001 C CNN
	1    5550 4750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 5B793CC8
P 5550 4900
F 0 "#PWR06" H 5550 4650 50  0001 C CNN
F 1 "GND" H 5550 4750 50  0000 C CNN
F 2 "" H 5550 4900 50  0001 C CNN
F 3 "" H 5550 4900 50  0001 C CNN
	1    5550 4900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 5B793D48
P 5550 4300
F 0 "#PWR07" H 5550 4150 50  0001 C CNN
F 1 "VCC" H 5550 4450 50  0000 C CNN
F 2 "" H 5550 4300 50  0001 C CNN
F 3 "" H 5550 4300 50  0001 C CNN
	1    5550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4300 5550 4300
Connection ~ 5300 4300
Wire Wire Line
	5050 4900 5550 4900
Connection ~ 5300 4900
Connection ~ 5550 4300
Connection ~ 5550 4900
Wire Wire Line
	4650 4100 4800 4100
Wire Wire Line
	4800 4100 4800 4600
Wire Wire Line
	4800 4600 5050 4600
Wire Wire Line
	4650 4000 5150 4000
Wire Wire Line
	5150 4000 5150 4600
Wire Wire Line
	5150 4600 5300 4600
Wire Wire Line
	4650 3900 5400 3900
Wire Wire Line
	5400 3900 5400 4600
Wire Wire Line
	5400 4600 5550 4600
Connection ~ 5550 4600
Connection ~ 5300 4600
Connection ~ 5050 4600
Text HLabel 2600 4900 2    60   Input ~ 0
B7
Text HLabel 2600 5000 2    60   Input ~ 0
B6
$Comp
L Conn_01x07_Male J1
U 1 1 5B7943CB
P 6700 3250
F 0 "J1" H 6700 3650 50  0000 C CNN
F 1 "Conn_01x07_Male" H 6700 2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x07_Pitch2.54mm" H 6700 3250 50  0001 C CNN
F 3 "" H 6700 3250 50  0001 C CNN
	1    6700 3250
	-1   0    0    -1  
$EndComp
Text HLabel 2600 5200 2    60   Input ~ 0
B5
Text HLabel 2600 2700 2    60   Input ~ 0
B3
Text HLabel 2600 2800 2    60   Input ~ 0
B2
Text HLabel 2600 2900 2    60   Input ~ 0
B1
Text HLabel 2600 3100 2    60   Input ~ 0
B0
$Comp
L GND #PWR08
U 1 1 5B7A5A5C
P 2600 5300
F 0 "#PWR08" H 2600 5050 50  0001 C CNN
F 1 "GND" H 2600 5150 50  0000 C CNN
F 2 "" H 2600 5300 50  0001 C CNN
F 3 "" H 2600 5300 50  0001 C CNN
	1    2600 5300
	1    0    0    -1  
$EndComp
Text HLabel 2600 3200 2    60   Input ~ 0
A7
Text HLabel 2600 3400 2    60   Input ~ 0
A6
Text HLabel 2600 3500 2    60   Input ~ 0
A5
Text HLabel 2600 3600 2    60   Input ~ 0
A4
Text HLabel 2600 4150 2    60   Input ~ 0
A3
Text HLabel 2600 4250 2    60   Input ~ 0
A2
Text HLabel 2600 4350 2    60   Input ~ 0
A1
Text HLabel 2600 4450 2    60   Input ~ 0
A0
$EndSCHEMATC
