EESchema Schematic File Version 2
LIBS:RotaryEncoderBreakout
LIBS:power
LIBS:device
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
LIBS:Nixie
LIBS:RotaryEncoderBreakout-cache
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
L RotaryEncoder_Switch_RGB SW1
U 1 1 5A2214F0
P 6200 3400
F 0 "SW1" V 5850 3150 60  0000 C CNN
F 1 "RotaryEncoder_Switch_RGB" H 6200 3450 40  0000 C CNN
F 2 "lib_fp:EC12PLRGB_Rotary_Encoder" H 6200 3325 60  0001 C CNN
F 3 "" H 6200 3325 60  0001 C CNN
	1    6200 3400
	0    1    1    0   
$EndComp
$Comp
L WS2811 U1
U 1 1 5A221510
P 7900 3300
F 0 "U1" H 7725 3150 60  0000 C CNN
F 1 "WS2811" H 7650 3625 60  0000 C CNN
F 2 "lib_fp:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7900 3300 60  0001 C CNN
F 3 "" H 7900 3300 60  0001 C CNN
	1    7900 3300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04_Male J2
U 1 1 5A22155E
P 3700 2850
F 0 "J2" H 3700 3050 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3700 2550 50  0000 C CNN
F 2 "lib_fp:Pin_Header_Straight_1x04_Pitch2.54mm" H 3700 2850 50  0001 C CNN
F 3 "" H 3700 2850 50  0001 C CNN
	1    3700 2850
	1    0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5A22160F
P 5400 2850
F 0 "R5" V 5480 2850 50  0000 C CNN
F 1 "10K" V 5400 2850 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 5330 2850 50  0001 C CNN
F 3 "" H 5400 2850 50  0001 C CNN
	1    5400 2850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A221649
P 4850 3200
F 0 "R2" V 4930 3200 50  0000 C CNN
F 1 "10K" V 4850 3200 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 4780 3200 50  0001 C CNN
F 3 "" H 4850 3200 50  0001 C CNN
	1    4850 3200
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 5A221690
P 4600 3400
F 0 "C1" H 4625 3500 50  0000 L CNN
F 1 ".01uF" H 4625 3300 50  0000 L CNN
F 2 "lib_fp:C_0805_HandSoldering" H 4638 3250 50  0001 C CNN
F 3 "" H 4600 3400 50  0001 C CNN
	1    4600 3400
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A2216CB
P 4600 4000
F 0 "C2" H 4625 4100 50  0000 L CNN
F 1 ".01uF" H 4625 3900 50  0000 L CNN
F 2 "lib_fp:C_0805_HandSoldering" H 4638 3850 50  0001 C CNN
F 3 "" H 4600 4000 50  0001 C CNN
	1    4600 4000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A22170A
P 4850 3800
F 0 "R3" V 4930 3800 50  0000 C CNN
F 1 "10K" V 4850 3800 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 4780 3800 50  0001 C CNN
F 3 "" H 4850 3800 50  0001 C CNN
	1    4850 3800
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A221747
P 5100 2850
F 0 "R4" V 5180 2850 50  0000 C CNN
F 1 "10K" V 5100 2850 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 5030 2850 50  0001 C CNN
F 3 "" H 5100 2850 50  0001 C CNN
	1    5100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3100 7300 3100
Wire Wire Line
	7300 3100 7300 3150
Wire Wire Line
	7300 3150 7400 3150
Wire Wire Line
	6900 3250 7400 3250
Wire Wire Line
	6900 3550 7300 3550
Wire Wire Line
	7300 3550 7300 3350
Wire Wire Line
	7300 3350 7400 3350
$Comp
L GND #PWR01
U 1 1 5A221925
P 5300 3450
F 0 "#PWR01" H 5300 3200 50  0001 C CNN
F 1 "GND" H 5300 3300 50  0000 C CNN
F 2 "" H 5300 3450 50  0001 C CNN
F 3 "" H 5300 3450 50  0001 C CNN
	1    5300 3450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5A221957
P 7900 2350
F 0 "#PWR02" H 7900 2200 50  0001 C CNN
F 1 "+5V" H 7900 2490 50  0000 C CNN
F 2 "" H 7900 2350 50  0001 C CNN
F 3 "" H 7900 2350 50  0001 C CNN
	1    7900 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A2219AF
P 7900 3700
F 0 "#PWR03" H 7900 3450 50  0001 C CNN
F 1 "GND" H 7900 3550 50  0000 C CNN
F 2 "" H 7900 3700 50  0001 C CNN
F 3 "" H 7900 3700 50  0001 C CNN
	1    7900 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 5A2219E4
P 7200 2850
F 0 "#PWR04" H 7200 2700 50  0001 C CNN
F 1 "+5V" H 7200 2990 50  0000 C CNN
F 2 "" H 7200 2850 50  0001 C CNN
F 3 "" H 7200 2850 50  0001 C CNN
	1    7200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3700 7200 3700
Wire Wire Line
	7200 3700 7200 2850
Wire Wire Line
	5000 3200 5500 3200
Wire Wire Line
	5400 3000 5400 3200
Connection ~ 5400 3200
Wire Wire Line
	5300 3450 5300 3400
Wire Wire Line
	5300 3400 5500 3400
Wire Wire Line
	5000 3800 5450 3800
Wire Wire Line
	5450 3800 5450 3600
Wire Wire Line
	5450 3600 5500 3600
Wire Wire Line
	4350 3800 4700 3800
Wire Wire Line
	4600 3800 4600 3850
Wire Wire Line
	4350 3200 4700 3200
Wire Wire Line
	4600 3200 4600 3250
$Comp
L GND #PWR05
U 1 1 5A221D67
P 4600 3550
F 0 "#PWR05" H 4600 3300 50  0001 C CNN
F 1 "GND" H 4600 3400 50  0000 C CNN
F 2 "" H 4600 3550 50  0001 C CNN
F 3 "" H 4600 3550 50  0001 C CNN
	1    4600 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A221D90
P 4600 4150
F 0 "#PWR06" H 4600 3900 50  0001 C CNN
F 1 "GND" H 4600 4000 50  0000 C CNN
F 2 "" H 4600 4150 50  0001 C CNN
F 3 "" H 4600 4150 50  0001 C CNN
	1    4600 4150
	1    0    0    -1  
$EndComp
Text Label 3550 3350 2    60   ~ 0
PC0
Text Label 3550 3450 2    60   ~ 0
PC1
Text Label 3550 3550 2    60   ~ 0
PC2
Wire Wire Line
	5100 3000 5100 3800
Connection ~ 5100 3800
$Comp
L +5V #PWR07
U 1 1 5A221F2A
P 5400 2700
F 0 "#PWR07" H 5400 2550 50  0001 C CNN
F 1 "+5V" H 5400 2840 50  0000 C CNN
F 2 "" H 5400 2700 50  0001 C CNN
F 3 "" H 5400 2700 50  0001 C CNN
	1    5400 2700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 5A221F53
P 5100 2700
F 0 "#PWR08" H 5100 2550 50  0001 C CNN
F 1 "+5V" H 5100 2840 50  0000 C CNN
F 2 "" H 5100 2700 50  0001 C CNN
F 3 "" H 5100 2700 50  0001 C CNN
	1    5100 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3800 4350 3550
Wire Wire Line
	4350 3550 3900 3550
Connection ~ 4600 3800
Wire Wire Line
	4350 3200 4350 3450
Wire Wire Line
	4350 3450 3900 3450
Connection ~ 4600 3200
$Comp
L +5V #PWR09
U 1 1 5A222011
P 4100 2600
F 0 "#PWR09" H 4100 2450 50  0001 C CNN
F 1 "+5V" H 4100 2740 50  0000 C CNN
F 2 "" H 4100 2600 50  0001 C CNN
F 3 "" H 4100 2600 50  0001 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A2220CF
P 4150 2950
F 0 "#PWR010" H 4150 2700 50  0001 C CNN
F 1 "GND" H 4150 2800 50  0000 C CNN
F 2 "" H 4150 2950 50  0001 C CNN
F 3 "" H 4150 2950 50  0001 C CNN
	1    4150 2950
	1    0    0    -1  
$EndComp
NoConn ~ 3900 2950
Wire Wire Line
	3900 2850 4150 2850
Wire Wire Line
	3900 2750 4000 2750
Wire Wire Line
	4000 2750 4000 2850
Connection ~ 4000 2850
Wire Wire Line
	3900 2650 4100 2650
Wire Wire Line
	4100 2650 4100 2600
Wire Wire Line
	4150 2850 4150 2950
$Comp
L Conn_01x04_Male J1
U 1 1 5A222349
P 3700 3550
F 0 "J1" H 3700 3750 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3700 3250 50  0000 C CNN
F 2 "lib_fp:Pin_Header_Straight_1x04_Pitch2.54mm" H 3700 3550 50  0001 C CNN
F 3 "" H 3700 3550 50  0001 C CNN
	1    3700 3550
	1    0    0    1   
$EndComp
Text Label 3550 3650 2    60   ~ 0
PC3
Wire Wire Line
	3900 3650 4000 3650
Wire Wire Line
	4000 3650 4000 4650
Wire Wire Line
	4000 4650 8900 4650
Wire Wire Line
	6900 3400 7050 3400
Wire Wire Line
	7050 3400 7050 4050
Wire Wire Line
	4150 3350 4150 4450
Wire Wire Line
	4150 3350 3900 3350
$Comp
L R R1
U 1 1 5A22251D
P 7050 4200
F 0 "R1" V 7130 4200 50  0000 C CNN
F 1 "10K" V 7050 4200 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 6980 4200 50  0001 C CNN
F 3 "" H 7050 4200 50  0001 C CNN
	1    7050 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5A22255E
P 7050 4350
F 0 "#PWR011" H 7050 4100 50  0001 C CNN
F 1 "GND" H 7050 4200 50  0000 C CNN
F 2 "" H 7050 4350 50  0001 C CNN
F 3 "" H 7050 4350 50  0001 C CNN
	1    7050 4350
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A22270B
P 7900 2500
F 0 "R6" V 7980 2500 50  0000 C CNN
F 1 "100" V 7900 2500 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 7830 2500 50  0001 C CNN
F 3 "" H 7900 2500 50  0001 C CNN
	1    7900 2500
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5A22280E
P 8100 2750
F 0 "C3" H 8125 2850 50  0000 L CNN
F 1 ".1uF" H 8125 2650 50  0000 L CNN
F 2 "lib_fp:C_0805_HandSoldering" H 8138 2600 50  0001 C CNN
F 3 "" H 8100 2750 50  0001 C CNN
	1    8100 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 2650 7900 2850
Wire Wire Line
	7950 2750 7900 2750
Connection ~ 7900 2750
$Comp
L GND #PWR012
U 1 1 5A2229C4
P 8350 2800
F 0 "#PWR012" H 8350 2550 50  0001 C CNN
F 1 "GND" H 8350 2650 50  0000 C CNN
F 2 "" H 8350 2800 50  0001 C CNN
F 3 "" H 8350 2800 50  0001 C CNN
	1    8350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2750 8350 2750
Wire Wire Line
	8350 2750 8350 2800
$Comp
L R R7
U 1 1 5A222BBB
P 8650 3250
F 0 "R7" V 8730 3250 50  0000 C CNN
F 1 "33" V 8650 3250 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 8580 3250 50  0001 C CNN
F 3 "" H 8650 3250 50  0001 C CNN
	1    8650 3250
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 5A222E2A
P 5850 2150
F 0 "#FLG013" H 5850 2225 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 2300 50  0000 C CNN
F 2 "" H 5850 2150 50  0001 C CNN
F 3 "" H 5850 2150 50  0001 C CNN
	1    5850 2150
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG014
U 1 1 5A222F1C
P 6350 2150
F 0 "#FLG014" H 6350 2225 50  0001 C CNN
F 1 "PWR_FLAG" H 6350 2300 50  0000 C CNN
F 2 "" H 6350 2150 50  0001 C CNN
F 3 "" H 6350 2150 50  0001 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 5A222FB9
P 5850 2150
F 0 "#PWR015" H 5850 2000 50  0001 C CNN
F 1 "+5V" H 5850 2290 50  0000 C CNN
F 2 "" H 5850 2150 50  0001 C CNN
F 3 "" H 5850 2150 50  0001 C CNN
	1    5850 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5A22304E
P 6350 2150
F 0 "#PWR016" H 6350 1900 50  0001 C CNN
F 1 "GND" H 6350 2000 50  0000 C CNN
F 2 "" H 6350 2150 50  0001 C CNN
F 3 "" H 6350 2150 50  0001 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4650 8900 3350
$Comp
L C C4
U 1 1 5A233F5E
P 6200 4200
F 0 "C4" H 6225 4300 50  0000 L CNN
F 1 ".01uF" H 6225 4100 50  0000 L CNN
F 2 "lib_fp:C_0805_HandSoldering" H 6238 4050 50  0001 C CNN
F 3 "" H 6200 4200 50  0001 C CNN
	1    6200 4200
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A233FB6
P 6450 4000
F 0 "R8" V 6530 4000 50  0000 C CNN
F 1 "10K" V 6450 4000 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 6380 4000 50  0001 C CNN
F 3 "" H 6450 4000 50  0001 C CNN
	1    6450 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 4000 6300 4000
Wire Wire Line
	6200 4000 6200 4050
$Comp
L GND #PWR017
U 1 1 5A2340C5
P 6200 4350
F 0 "#PWR017" H 6200 4100 50  0001 C CNN
F 1 "GND" H 6200 4200 50  0000 C CNN
F 2 "" H 6200 4350 50  0001 C CNN
F 3 "" H 6200 4350 50  0001 C CNN
	1    6200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4450 5900 4450
Wire Wire Line
	5900 4450 5900 4000
Connection ~ 6200 4000
Wire Wire Line
	6600 4000 7050 4000
Connection ~ 7050 4000
Wire Wire Line
	8800 3250 8900 3250
Wire Wire Line
	8400 3250 8500 3250
Wire Wire Line
	8400 3150 8550 3150
Wire Wire Line
	8550 3150 8550 3050
$Comp
L +5V #PWR018
U 1 1 5A260D0D
P 8750 2900
F 0 "#PWR018" H 8750 2750 50  0001 C CNN
F 1 "+5V" H 8750 3040 50  0000 C CNN
F 2 "" H 8750 2900 50  0001 C CNN
F 3 "" H 8750 2900 50  0001 C CNN
	1    8750 2900
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05_Male J3
U 1 1 5A28BDF7
P 9100 3150
F 0 "J3" H 9100 3450 50  0000 C CNN
F 1 "Conn_01x05_Male" V 8900 3150 50  0000 C CNN
F 2 "lib_fp:Pin_Header_Straight_1x05_Pitch2.54mm" H 9100 3150 50  0001 C CNN
F 3 "" H 9100 3150 50  0001 C CNN
	1    9100 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 3050 8900 3050
Wire Wire Line
	8750 2900 8750 2950
Wire Wire Line
	8750 2950 8900 2950
Wire Wire Line
	8400 3350 8850 3350
Wire Wire Line
	8850 3350 8850 3150
Wire Wire Line
	8850 3150 8900 3150
$EndSCHEMATC
