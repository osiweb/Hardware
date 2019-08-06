EESchema Schematic File Version 4
EELAYER 29 0
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
L Connector_Generic:Conn_01x16 J1
U 1 1 5D403EBD
P 2750 4400
F 0 "J1" H 2750 5250 50  0000 C CNN
F 1 "Apple 1" H 3050 4400 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 2750 4400 50  0001 C CNN
F 3 "~" H 2750 4400 50  0001 C CNN
	1    2750 4400
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J4
U 1 1 5D404973
P 6500 4400
F 0 "J4" H 6450 5250 50  0000 L CNN
F 1 "Keyboard" H 6580 4301 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 6500 4400 50  0001 C CNN
F 3 "~" H 6500 4400 50  0001 C CNN
	1    6500 4400
	1    0    0    -1  
$EndComp
Entry Wire Line
	5650 5200 5550 5100
Entry Wire Line
	5650 5100 5550 5000
Entry Wire Line
	5650 5000 5550 4900
Entry Wire Line
	5650 4900 5550 4800
Entry Wire Line
	5650 4800 5550 4700
Entry Wire Line
	5650 4700 5550 4600
Entry Wire Line
	5650 4600 5550 4500
Entry Wire Line
	5650 4500 5550 4400
Entry Wire Line
	5650 4400 5550 4300
Entry Wire Line
	5650 4300 5550 4200
Entry Wire Line
	5650 4200 5550 4100
Entry Wire Line
	5650 4100 5550 4000
Entry Wire Line
	5650 4000 5550 3900
Entry Wire Line
	5650 3900 5550 3800
Entry Wire Line
	5650 3800 5550 3700
Entry Wire Line
	5650 3700 5550 3600
Wire Wire Line
	5650 3700 6300 3700
Wire Wire Line
	6300 3800 5650 3800
Wire Wire Line
	5650 3900 6300 3900
Wire Wire Line
	6300 4000 5650 4000
Wire Wire Line
	5650 4100 6300 4100
Wire Wire Line
	6300 4200 5650 4200
Wire Wire Line
	5650 4300 6300 4300
Wire Wire Line
	6300 4400 5650 4400
Wire Wire Line
	5650 4500 6300 4500
Wire Wire Line
	6300 4600 5650 4600
Wire Wire Line
	5650 4700 6300 4700
Wire Wire Line
	6300 4800 5650 4800
Wire Wire Line
	5650 4900 6300 4900
Wire Wire Line
	6300 5000 5650 5000
Wire Wire Line
	5650 5100 6300 5100
Wire Wire Line
	6300 5200 5650 5200
Text Label 3000 4500 0    50   ~ 0
GND
Text Label 5700 4400 0    50   ~ 0
GND
Text Label 5700 3700 0    50   ~ 0
+5V
Text Label 3000 5100 0    50   ~ 0
D8
Text Label 3000 4600 0    50   ~ 0
+12V
Text Label 3000 4700 0    50   ~ 0
-12V
Text Label 2950 3700 0    50   ~ 0
~RESET
Text Label 2950 3800 0    50   ~ 0
D4
Text Label 2950 3900 0    50   ~ 0
D3
Text Label 2950 4000 0    50   ~ 0
D2
Text Label 2950 4100 0    50   ~ 0
D1
Text Label 2950 4200 0    50   ~ 0
D5
Text Label 2950 4300 0    50   ~ 0
D6
Text Label 2950 4400 0    50   ~ 0
D7
Text Label 3000 4800 0    50   ~ 0
~CLRSCR
Wire Wire Line
	2950 4700 3500 4700
Wire Wire Line
	2950 5000 3500 5000
Wire Wire Line
	3500 4900 2950 4900
Wire Wire Line
	2950 4800 3500 4800
Wire Wire Line
	2950 4600 3500 4600
Wire Wire Line
	2950 4500 3500 4500
Wire Wire Line
	2950 4400 3500 4400
Wire Wire Line
	2950 4300 3500 4300
Wire Wire Line
	3500 4200 2950 4200
Wire Wire Line
	2950 4100 3500 4100
Wire Wire Line
	3500 4000 2950 4000
Wire Wire Line
	2950 3900 3500 3900
Wire Wire Line
	3500 3800 2950 3800
Wire Wire Line
	2950 3700 3500 3700
Entry Wire Line
	3500 3700 3600 3600
Entry Wire Line
	3500 3800 3600 3700
Entry Wire Line
	3500 3900 3600 3800
Entry Wire Line
	3500 4000 3600 3900
Entry Wire Line
	3500 4100 3600 4000
Entry Wire Line
	3500 4200 3600 4100
Entry Wire Line
	3500 4300 3600 4200
Entry Wire Line
	3500 4400 3600 4300
Entry Wire Line
	3500 4500 3600 4400
Entry Wire Line
	3500 4600 3600 4500
Entry Wire Line
	3500 4700 3600 4600
Entry Wire Line
	3500 4800 3600 4700
Entry Wire Line
	3500 4900 3600 4800
Entry Wire Line
	3500 5000 3600 4900
Entry Wire Line
	3500 5100 3600 5000
Entry Wire Line
	3500 5200 3600 5100
Text Label 3000 5000 0    50   ~ 0
~STROBE
Text Label 5700 3800 0    50   ~ 0
~STROBE
Text Label 5700 3900 0    50   ~ 0
~RESET
Text Label 5700 4100 0    50   ~ 0
D6
Text Label 5700 4200 0    50   ~ 0
D5
Text Label 5700 4300 0    50   ~ 0
D7
Text Label 5700 4600 0    50   ~ 0
D3
Text Label 5700 4700 0    50   ~ 0
D4
Text Label 5700 4800 0    50   ~ 0
D1
Text Label 5700 4900 0    50   ~ 0
D2
Text Label 5700 5100 0    50   ~ 0
-12V
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5D42D5FA
P 4500 3150
F 0 "J2" H 4450 3300 50  0000 L CNN
F 1 "~RESET" H 4450 2900 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4500 3150 50  0001 C CNN
F 3 "~" H 4500 3150 50  0001 C CNN
	1    4500 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5D42E7EE
P 5600 3150
F 0 "J3" H 5550 3300 50  0000 L CNN
F 1 "~CLEAR_SCREEN" H 5550 2900 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5600 3150 50  0001 C CNN
F 3 "~" H 5600 3150 50  0001 C CNN
	1    5600 3150
	1    0    0    -1  
$EndComp
Entry Wire Line
	3650 3550 3750 3450
Entry Wire Line
	3750 3550 3850 3450
Wire Wire Line
	3850 3250 4250 3250
Wire Wire Line
	3850 3250 3850 3450
Wire Wire Line
	3750 3450 3750 3150
Text Label 3900 3250 0    50   ~ 0
GND
Text Label 3900 3150 0    50   ~ 0
~RESET
Entry Wire Line
	4650 3550 4750 3450
Entry Wire Line
	4750 3550 4850 3450
Wire Wire Line
	4850 3250 4850 3450
Wire Wire Line
	4750 3450 4750 3150
Wire Wire Line
	5400 3250 5250 3250
$Comp
L Switch:SW_SPST SW1
U 1 1 5D44894E
P 4000 2750
F 0 "SW1" H 4000 2985 50  0000 C CNN
F 1 "SW_SPST" H 4000 2894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 4000 2750 50  0001 C CNN
F 3 "~" H 4000 2750 50  0001 C CNN
	1    4000 2750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5D44A505
P 5000 2750
F 0 "SW2" H 5000 2985 50  0000 C CNN
F 1 "SW_SPST" H 5000 2894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_Straight_KSL0Axx1LFTR" H 5000 2750 50  0001 C CNN
F 3 "~" H 5000 2750 50  0001 C CNN
	1    5000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2750 3750 2750
Wire Wire Line
	3750 2750 3750 3150
Connection ~ 3750 3150
Wire Wire Line
	4750 3150 5400 3150
Wire Wire Line
	3750 3150 4300 3150
Wire Wire Line
	4200 2750 4250 2750
Wire Wire Line
	4250 2750 4250 3250
Connection ~ 4250 3250
Wire Wire Line
	4250 3250 4300 3250
Wire Wire Line
	4800 2750 4750 2750
Wire Wire Line
	4750 2750 4750 3150
Connection ~ 4750 3150
Wire Wire Line
	5200 2750 5250 2750
Wire Wire Line
	5250 2750 5250 3250
Connection ~ 5250 3250
Wire Wire Line
	5250 3250 4850 3250
$Comp
L Device:R_US R1
U 1 1 5D457F82
P 3200 5400
F 0 "R1" V 3300 5300 50  0000 C CNN
F 1 "10K" V 3300 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3240 5390 50  0001 C CNN
F 3 "~" H 3200 5400 50  0001 C CNN
	1    3200 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 5200 3000 5200
Wire Wire Line
	3500 5100 3400 5100
Wire Wire Line
	3050 5400 3000 5400
Wire Wire Line
	3000 5400 3000 5200
Connection ~ 3000 5200
Wire Wire Line
	3000 5200 3500 5200
Wire Wire Line
	3350 5400 3400 5400
Wire Wire Line
	3400 5400 3400 5100
Connection ~ 3400 5100
Wire Wire Line
	3400 5100 2950 5100
Text Label 4900 3250 0    50   ~ 0
~CLRSCR
Text Label 4900 3150 0    50   ~ 0
GND
Text Label 3000 5200 0    50   ~ 0
+5V
Text Notes 7075 6875 0    118  ~ 0
Apple 2 Keyboard to Apple 1 adapter\n
Text Notes 7300 7250 0    59   ~ 0
1 1
Text Notes 7350 7500 0    71   ~ 0
Apple 2 Keyboard to Apple 1 adapter  Rev 1\n
Text Notes 8125 7650 0    71   ~ 0
7/30/2019
Wire Bus Line
	3600 3550 5550 3550
Wire Bus Line
	3600 3550 3600 5100
Wire Bus Line
	5550 3550 5550 5100
$EndSCHEMATC
