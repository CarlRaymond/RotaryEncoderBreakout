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
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "EC12PLRGB Rotary Encoder Breakout Board"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WS2811 U1
U 1 1 5A221510
P 7250 3800
F 0 "U1" H 7075 3650 60  0000 C CNN
F 1 "WS2811" H 7000 4125 60  0000 C CNN
F 2 "lib_fp:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7250 3800 60  0001 C CNN
F 3 "" H 7250 3800 60  0001 C CNN
F 4 "Mouser" H 7250 3800 60  0001 C CNN "Distributor"
F 5 "485-1378" H 7250 3800 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/Adafruit/1378/?qs=%2fha2pyFadujIsUxzuHfqvCEPPtKxbz3Fteyuvyy64JU%3d" H 7250 3800 60  0001 C CNN "Dist. URL"
	1    7250 3800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04_Male J2
U 1 1 5A22155E
P 3050 3350
F 0 "J2" H 3050 3550 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3050 3050 50  0000 C CNN
F 2 "lib_fp:Socket_Strip_Straight_1x04_Pitch2.54mm" H 3050 3350 50  0001 C CNN
F 3 "" H 3050 3350 50  0001 C CNN
	1    3050 3350
	1    0    0    1   
$EndComp
$Comp
L R R5
U 1 1 5A22160F
P 4750 3350
F 0 "R5" V 4830 3350 50  0000 C CNN
F 1 "10K" V 4750 3350 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 4680 3350 50  0001 C CNN
F 3 "" H 4750 3350 50  0001 C CNN
F 4 "Mouser" H 4750 3350 60  0001 C CNN "Distributor"
F 5 "RC0805FR-0710KL" H 4750 3350 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/603-RC0805FR-0710KL" H 4750 3350 60  0001 C CNN "Dist. URL"
	1    4750 3350
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A221649
P 4200 3700
F 0 "R2" V 4280 3700 50  0000 C CNN
F 1 "22K" V 4200 3700 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 4130 3700 50  0001 C CNN
F 3 "" H 4200 3700 50  0001 C CNN
F 4 "Mouser" H 4200 3700 60  0001 C CNN "Distributor"
F 5 "RC0805FR-0722KL" H 4200 3700 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/603-RC0805FR-0722KL" H 4200 3700 60  0001 C CNN "Dist. URL"
	1    4200 3700
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 5A221690
P 3950 3900
F 0 "C1" H 3975 4000 50  0000 L CNN
F 1 ".1uF" H 3975 3800 50  0000 L CNN
F 2 "lib_fp:C_0805_HandSoldering" H 3988 3750 50  0001 C CNN
F 3 "" H 3950 3900 50  0001 C CNN
F 4 "Mouser" H 3950 3900 60  0001 C CNN "Distributor"
F 5 "C0805C104M5RACTU" H 3950 3900 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/80-C0805C104M5R" H 3950 3900 60  0001 C CNN "Dist. URL"
	1    3950 3900
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A2216CB
P 3950 4500
F 0 "C2" H 3975 4600 50  0000 L CNN
F 1 ".1uF" H 3975 4400 50  0000 L CNN
F 2 "lib_fp:C_0805_HandSoldering" H 3988 4350 50  0001 C CNN
F 3 "" H 3950 4500 50  0001 C CNN
F 4 "Mouser" H 3950 4500 60  0001 C CNN "Distributor"
F 5 "C0805C104M5RACTU" H 3950 4500 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/80-C0805C104M5R" H 3950 4500 60  0001 C CNN "Dist. URL"
	1    3950 4500
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A22170A
P 4200 4300
F 0 "R3" V 4280 4300 50  0000 C CNN
F 1 "22K" V 4200 4300 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 4130 4300 50  0001 C CNN
F 3 "" H 4200 4300 50  0001 C CNN
F 4 "Mouser" H 4200 4300 60  0001 C CNN "Distributor"
F 5 "RC0805FR-0722KL" H 4200 4300 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/603-RC0805FR-0722KL" H 4200 4300 60  0001 C CNN "Dist. URL"
	1    4200 4300
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A221747
P 4450 3350
F 0 "R4" V 4530 3350 50  0000 C CNN
F 1 "10K" V 4450 3350 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 4380 3350 50  0001 C CNN
F 3 "" H 4450 3350 50  0001 C CNN
F 4 "Mouser" H 4450 3350 60  0001 C CNN "Distributor"
F 5 "RC0805FR-0710KL" H 4450 3350 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/603-RC0805FR-0710KL" H 4450 3350 60  0001 C CNN "Dist. URL"
	1    4450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3600 6650 3600
Wire Wire Line
	6650 3600 6650 3650
Wire Wire Line
	6650 3650 6750 3650
Wire Wire Line
	6250 3750 6750 3750
Wire Wire Line
	6250 4050 6650 4050
Wire Wire Line
	6650 4050 6650 3850
Wire Wire Line
	6650 3850 6750 3850
$Comp
L GND #PWR01
U 1 1 5A221925
P 4650 3950
F 0 "#PWR01" H 4650 3700 50  0001 C CNN
F 1 "GND" H 4650 3800 50  0000 C CNN
F 2 "" H 4650 3950 50  0001 C CNN
F 3 "" H 4650 3950 50  0001 C CNN
	1    4650 3950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5A221957
P 7250 2850
F 0 "#PWR02" H 7250 2700 50  0001 C CNN
F 1 "+5V" H 7250 2990 50  0000 C CNN
F 2 "" H 7250 2850 50  0001 C CNN
F 3 "" H 7250 2850 50  0001 C CNN
	1    7250 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A2219AF
P 7250 4200
F 0 "#PWR03" H 7250 3950 50  0001 C CNN
F 1 "GND" H 7250 4050 50  0000 C CNN
F 2 "" H 7250 4200 50  0001 C CNN
F 3 "" H 7250 4200 50  0001 C CNN
	1    7250 4200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 5A2219E4
P 6550 3350
F 0 "#PWR04" H 6550 3200 50  0001 C CNN
F 1 "+5V" H 6550 3490 50  0000 C CNN
F 2 "" H 6550 3350 50  0001 C CNN
F 3 "" H 6550 3350 50  0001 C CNN
	1    6550 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4200 6550 4200
Wire Wire Line
	6550 4200 6550 3350
Wire Wire Line
	4350 3700 4850 3700
Wire Wire Line
	4750 3500 4750 3700
Connection ~ 4750 3700
Wire Wire Line
	4650 3950 4650 3900
Wire Wire Line
	4650 3900 4850 3900
Wire Wire Line
	4350 4300 4800 4300
Wire Wire Line
	4800 4300 4800 4100
Wire Wire Line
	4800 4100 4850 4100
Wire Wire Line
	3700 4300 4050 4300
Wire Wire Line
	3950 4300 3950 4350
Wire Wire Line
	3700 3700 4050 3700
Wire Wire Line
	3950 3700 3950 3750
$Comp
L GND #PWR05
U 1 1 5A221D67
P 3950 4050
F 0 "#PWR05" H 3950 3800 50  0001 C CNN
F 1 "GND" H 3950 3900 50  0000 C CNN
F 2 "" H 3950 4050 50  0001 C CNN
F 3 "" H 3950 4050 50  0001 C CNN
	1    3950 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A221D90
P 3950 4650
F 0 "#PWR06" H 3950 4400 50  0001 C CNN
F 1 "GND" H 3950 4500 50  0000 C CNN
F 2 "" H 3950 4650 50  0001 C CNN
F 3 "" H 3950 4650 50  0001 C CNN
	1    3950 4650
	1    0    0    -1  
$EndComp
Text Label 2900 3850 2    60   ~ 0
PC0
Text Label 2900 3950 2    60   ~ 0
PC1
Text Label 2900 4050 2    60   ~ 0
PC2
Wire Wire Line
	4450 3500 4450 4300
Connection ~ 4450 4300
$Comp
L +5V #PWR07
U 1 1 5A221F2A
P 4750 3200
F 0 "#PWR07" H 4750 3050 50  0001 C CNN
F 1 "+5V" H 4750 3340 50  0000 C CNN
F 2 "" H 4750 3200 50  0001 C CNN
F 3 "" H 4750 3200 50  0001 C CNN
	1    4750 3200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 5A221F53
P 4450 3200
F 0 "#PWR08" H 4450 3050 50  0001 C CNN
F 1 "+5V" H 4450 3340 50  0000 C CNN
F 2 "" H 4450 3200 50  0001 C CNN
F 3 "" H 4450 3200 50  0001 C CNN
	1    4450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4300 3700 4050
Wire Wire Line
	3700 4050 3250 4050
Connection ~ 3950 4300
Wire Wire Line
	3700 3700 3700 3950
Wire Wire Line
	3700 3950 3250 3950
Connection ~ 3950 3700
$Comp
L +5V #PWR09
U 1 1 5A222011
P 3450 3100
F 0 "#PWR09" H 3450 2950 50  0001 C CNN
F 1 "+5V" H 3450 3240 50  0000 C CNN
F 2 "" H 3450 3100 50  0001 C CNN
F 3 "" H 3450 3100 50  0001 C CNN
	1    3450 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A2220CF
P 3500 3450
F 0 "#PWR010" H 3500 3200 50  0001 C CNN
F 1 "GND" H 3500 3300 50  0000 C CNN
F 2 "" H 3500 3450 50  0001 C CNN
F 3 "" H 3500 3450 50  0001 C CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
NoConn ~ 3250 3450
Wire Wire Line
	3250 3350 3500 3350
Wire Wire Line
	3250 3250 3350 3250
Wire Wire Line
	3350 3250 3350 3350
Connection ~ 3350 3350
Wire Wire Line
	3250 3150 3450 3150
Wire Wire Line
	3450 3150 3450 3100
Wire Wire Line
	3500 3350 3500 3450
$Comp
L Conn_01x04_Male J1
U 1 1 5A222349
P 3050 4050
F 0 "J1" H 3050 4250 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3050 3750 50  0000 C CNN
F 2 "lib_fp:Socket_Strip_Straight_1x04_Pitch2.54mm" H 3050 4050 50  0001 C CNN
F 3 "" H 3050 4050 50  0001 C CNN
	1    3050 4050
	1    0    0    1   
$EndComp
Text Label 2900 4150 2    60   ~ 0
PC3
Wire Wire Line
	3250 4150 3350 4150
Wire Wire Line
	3350 4150 3350 5150
Wire Wire Line
	3350 5150 8250 5150
Wire Wire Line
	6250 3900 6400 3900
Wire Wire Line
	6400 3900 6400 4550
Wire Wire Line
	3500 3850 3500 4950
Wire Wire Line
	3500 3850 3250 3850
$Comp
L R R1
U 1 1 5A22251D
P 6400 4700
F 0 "R1" V 6480 4700 50  0000 C CNN
F 1 "10K" V 6400 4700 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 6330 4700 50  0001 C CNN
F 3 "" H 6400 4700 50  0001 C CNN
F 4 "Mouser" H 6400 4700 60  0001 C CNN "Distributor"
F 5 "603-RC0805FR-0710KL" H 6400 4700 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/603-RC0805FR-0710KL" H 6400 4700 60  0001 C CNN "Dist. URL"
	1    6400 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5A22255E
P 6400 4850
F 0 "#PWR011" H 6400 4600 50  0001 C CNN
F 1 "GND" H 6400 4700 50  0000 C CNN
F 2 "" H 6400 4850 50  0001 C CNN
F 3 "" H 6400 4850 50  0001 C CNN
	1    6400 4850
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A22270B
P 7250 3000
F 0 "R6" V 7330 3000 50  0000 C CNN
F 1 "100" V 7250 3000 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 7180 3000 50  0001 C CNN
F 3 "" H 7250 3000 50  0001 C CNN
F 4 "Mouser" H 7250 3000 60  0001 C CNN "Distributor"
F 5 "603-RC0805FR-07100RL" H 7250 3000 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/603-RC0805FR-07100RL" H 7250 3000 60  0001 C CNN "Dist. URL"
	1    7250 3000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5A22280E
P 7450 3250
F 0 "C3" H 7475 3350 50  0000 L CNN
F 1 ".1uF" H 7475 3150 50  0000 L CNN
F 2 "lib_fp:C_0805_HandSoldering" H 7488 3100 50  0001 C CNN
F 3 "" H 7450 3250 50  0001 C CNN
F 4 "Mouser" H 7450 3250 60  0001 C CNN "Distributor"
F 5 "C0805C104M5RACTU" H 7450 3250 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/80-C0805C104M5R" H 7450 3250 60  0001 C CNN "Dist. URL"
	1    7450 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3150 7250 3350
Wire Wire Line
	7300 3250 7250 3250
Connection ~ 7250 3250
$Comp
L GND #PWR012
U 1 1 5A2229C4
P 7700 3300
F 0 "#PWR012" H 7700 3050 50  0001 C CNN
F 1 "GND" H 7700 3150 50  0000 C CNN
F 2 "" H 7700 3300 50  0001 C CNN
F 3 "" H 7700 3300 50  0001 C CNN
	1    7700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3250 7700 3250
Wire Wire Line
	7700 3250 7700 3300
$Comp
L R R7
U 1 1 5A222BBB
P 8000 3750
F 0 "R7" V 8080 3750 50  0000 C CNN
F 1 "33" V 8000 3750 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 7930 3750 50  0001 C CNN
F 3 "" H 8000 3750 50  0001 C CNN
F 4 "Mouser" H 8000 3750 60  0001 C CNN "Distributor"
F 5 "RC0805FR-0733RL" H 8000 3750 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/603-RC0805FR-0733RL" H 8000 3750 60  0001 C CNN "Dist. URL"
	1    8000 3750
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 5A222E2A
P 5200 2650
F 0 "#FLG013" H 5200 2725 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 2800 50  0000 C CNN
F 2 "" H 5200 2650 50  0001 C CNN
F 3 "" H 5200 2650 50  0001 C CNN
	1    5200 2650
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG014
U 1 1 5A222F1C
P 5700 2650
F 0 "#FLG014" H 5700 2725 50  0001 C CNN
F 1 "PWR_FLAG" H 5700 2800 50  0000 C CNN
F 2 "" H 5700 2650 50  0001 C CNN
F 3 "" H 5700 2650 50  0001 C CNN
	1    5700 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 5A222FB9
P 5200 2650
F 0 "#PWR015" H 5200 2500 50  0001 C CNN
F 1 "+5V" H 5200 2790 50  0000 C CNN
F 2 "" H 5200 2650 50  0001 C CNN
F 3 "" H 5200 2650 50  0001 C CNN
	1    5200 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5A22304E
P 5700 2650
F 0 "#PWR016" H 5700 2400 50  0001 C CNN
F 1 "GND" H 5700 2500 50  0000 C CNN
F 2 "" H 5700 2650 50  0001 C CNN
F 3 "" H 5700 2650 50  0001 C CNN
	1    5700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5150 8250 3850
$Comp
L C C4
U 1 1 5A233F5E
P 5550 4700
F 0 "C4" H 5575 4800 50  0000 L CNN
F 1 ".1uF" H 5575 4600 50  0000 L CNN
F 2 "lib_fp:C_0805_HandSoldering" H 5588 4550 50  0001 C CNN
F 3 "" H 5550 4700 50  0001 C CNN
F 4 "Mouser" H 5550 4700 60  0001 C CNN "Distributor"
F 5 "C0805C104M5RACTU" H 5550 4700 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/80-C0805C104M5R" H 5550 4700 60  0001 C CNN "Dist. URL"
	1    5550 4700
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5A233FB6
P 5800 4500
F 0 "R8" V 5880 4500 50  0000 C CNN
F 1 "22K" V 5800 4500 50  0000 C CNN
F 2 "lib_fp:R_0805_HandSoldering" V 5730 4500 50  0001 C CNN
F 3 "" H 5800 4500 50  0001 C CNN
F 4 "Mouser" H 5800 4500 60  0001 C CNN "Distributor"
F 5 "RC0805FR-0722KL" H 5800 4500 60  0001 C CNN "Dist. Part No."
F 6 "https://www.mouser.com/ProductDetail/603-RC0805FR-0722KL" H 5800 4500 60  0001 C CNN "Dist. URL"
	1    5800 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 4500 5650 4500
Wire Wire Line
	5550 4500 5550 4550
$Comp
L GND #PWR017
U 1 1 5A2340C5
P 5550 4850
F 0 "#PWR017" H 5550 4600 50  0001 C CNN
F 1 "GND" H 5550 4700 50  0000 C CNN
F 2 "" H 5550 4850 50  0001 C CNN
F 3 "" H 5550 4850 50  0001 C CNN
	1    5550 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4950 5250 4950
Wire Wire Line
	5250 4950 5250 4500
Connection ~ 5550 4500
Wire Wire Line
	5950 4500 6400 4500
Connection ~ 6400 4500
Wire Wire Line
	8150 3750 8250 3750
Wire Wire Line
	7750 3750 7850 3750
Wire Wire Line
	7750 3650 7900 3650
Wire Wire Line
	7900 3650 7900 3550
$Comp
L +5V #PWR018
U 1 1 5A260D0D
P 8100 3400
F 0 "#PWR018" H 8100 3250 50  0001 C CNN
F 1 "+5V" H 8100 3540 50  0000 C CNN
F 2 "" H 8100 3400 50  0001 C CNN
F 3 "" H 8100 3400 50  0001 C CNN
	1    8100 3400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05_Male J3
U 1 1 5A28BDF7
P 8450 3650
F 0 "J3" H 8450 3950 50  0000 C CNN
F 1 "Conn_01x05_Male" V 8250 3650 50  0000 C CNN
F 2 "lib_fp:Pin_Header_Straight_1x05_Pitch2.54mm" H 8450 3650 50  0001 C CNN
F 3 "" H 8450 3650 50  0001 C CNN
	1    8450 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 3550 8250 3550
Wire Wire Line
	8100 3400 8100 3450
Wire Wire Line
	8100 3450 8250 3450
Wire Wire Line
	7750 3850 8200 3850
Wire Wire Line
	8200 3850 8200 3650
Wire Wire Line
	8200 3650 8250 3650
$Comp
L EC12PLRGB SW1
U 1 1 5A49622F
P 5550 3900
F 0 "SW1" V 5900 3900 60  0000 C CNN
F 1 "EC12PLRGB" V 5050 3750 40  0000 C CNN
F 2 "lib_fp:EC12PLRGB_Rotary_Encoder" H 5550 3825 60  0001 C CNN
F 3 "" H 5550 3825 60  0001 C CNN
F 4 "SparkFun" H 5550 3900 60  0001 C CNN "Distributor"
F 5 "10982" H 5550 3900 60  0001 C CNN "Dist. Part No."
F 6 "https://www.sparkfun.com/products/10982" H 5550 3900 60  0001 C CNN "Dist. URL"
	1    5550 3900
	0    1    1    0   
$EndComp
$EndSCHEMATC
