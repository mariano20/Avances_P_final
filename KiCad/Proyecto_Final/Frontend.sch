EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Frontend RF"
Date ""
Rev "1"
Comp ""
Comment1 "Entrada RF, mezcla, ampli, filtros"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L hackrf:hackrf_RFFC5072 U?
U 1 1 5FF11A11
P 5700 3950
F 0 "U?" H 5650 4050 60  0000 L CNN
F 1 "RFFC5072" H 5500 3950 60  0000 L CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.7x3.7mm" H 5700 3950 60  0001 C CNN
F 3 "" H 5700 3950 60  0001 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF129BD
P 900 5250
F 0 "C?" H 1015 5296 50  0000 L CNN
F 1 "180pF" H 1015 5205 50  0000 L CNN
F 2 "" H 938 5100 50  0001 C CNN
F 3 "~" H 900 5250 50  0001 C CNN
	1    900  5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF13EDF
P 900 4750
F 0 "R?" H 970 4796 50  0000 L CNN
F 1 "22k" H 970 4705 50  0000 L CNN
F 2 "" V 830 4750 50  0001 C CNN
F 3 "~" H 900 4750 50  0001 C CNN
	1    900  4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF14316
P 1350 4900
F 0 "C?" H 1465 4946 50  0000 L CNN
F 1 "8.2pF" H 1465 4855 50  0000 L CNN
F 2 "" H 1388 4750 50  0001 C CNN
F 3 "~" H 1350 4900 50  0001 C CNN
	1    1350 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF14831
P 1750 5200
F 0 "R?" V 1543 5200 50  0000 C CNN
F 1 "470" V 1634 5200 50  0000 C CNN
F 2 "" V 1680 5200 50  0001 C CNN
F 3 "~" H 1750 5200 50  0001 C CNN
	1    1750 5200
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FF14EF9
P 2100 5350
F 0 "C?" H 2215 5396 50  0000 L CNN
F 1 "330pF" H 2215 5305 50  0000 L CNN
F 2 "" H 2138 5200 50  0001 C CNN
F 3 "~" H 2100 5350 50  0001 C CNN
	1    2100 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF1669E
P 2450 5200
F 0 "R?" V 2243 5200 50  0000 C CNN
F 1 "470" V 2334 5200 50  0000 C CNN
F 2 "" V 2380 5200 50  0001 C CNN
F 3 "~" H 2450 5200 50  0001 C CNN
	1    2450 5200
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FF166A4
P 2800 5350
F 0 "C?" H 2915 5396 50  0000 L CNN
F 1 "330pF" H 2915 5305 50  0000 L CNN
F 2 "" H 2838 5200 50  0001 C CNN
F 3 "~" H 2800 5350 50  0001 C CNN
	1    2800 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5100 900  4900
Wire Wire Line
	900  4600 1350 4600
Wire Wire Line
	1350 4600 1350 4750
Wire Wire Line
	900  5400 900  5500
Wire Wire Line
	900  5500 1350 5500
Wire Wire Line
	1350 5500 1350 5200
Wire Wire Line
	1600 5200 1350 5200
Connection ~ 1350 5200
Wire Wire Line
	1350 5200 1350 5050
Wire Wire Line
	1900 5200 2100 5200
Wire Wire Line
	2100 5200 2300 5200
Connection ~ 2100 5200
Wire Wire Line
	2600 5200 2800 5200
Wire Wire Line
	2800 5200 3150 5200
Connection ~ 2800 5200
Wire Wire Line
	900  4600 600  4600
Connection ~ 900  4600
Wire Wire Line
	900  5500 600  5500
Connection ~ 900  5500
$Comp
L power:GND #PWR?
U 1 1 5FF17A54
P 2100 5500
F 0 "#PWR?" H 2100 5250 50  0001 C CNN
F 1 "GND" H 2105 5327 50  0000 C CNN
F 2 "" H 2100 5500 50  0001 C CNN
F 3 "" H 2100 5500 50  0001 C CNN
	1    2100 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF17E9C
P 2800 5500
F 0 "#PWR?" H 2800 5250 50  0001 C CNN
F 1 "GND" H 2805 5327 50  0000 C CNN
F 2 "" H 2800 5500 50  0001 C CNN
F 3 "" H 2800 5500 50  0001 C CNN
	1    2800 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF1815B
P 5650 5100
F 0 "#PWR?" H 5650 4850 50  0001 C CNN
F 1 "GND" H 5655 4927 50  0000 C CNN
F 2 "" H 5650 5100 50  0001 C CNN
F 3 "" H 5650 5100 50  0001 C CNN
	1    5650 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF1864E
P 4550 3300
F 0 "#PWR?" H 4550 3050 50  0001 C CNN
F 1 "GND" H 4555 3127 50  0000 C CNN
F 2 "" H 4550 3300 50  0001 C CNN
F 3 "" H 4550 3300 50  0001 C CNN
	1    4550 3300
	1    0    0    -1  
$EndComp
Text Label 600  4600 0    50   ~ 0
LFILT1
Text Label 600  5500 0    50   ~ 0
LFILT2
Text Label 3150 5200 2    50   ~ 0
LFILT3
Wire Wire Line
	4550 4300 4200 4300
Wire Wire Line
	4550 4200 4200 4200
Wire Wire Line
	4550 4100 4200 4100
Text Label 4200 4100 0    50   ~ 0
LFILT1
Text Label 4200 4200 0    50   ~ 0
LFILT2
Text Label 4200 4300 0    50   ~ 0
LFILT3
Wire Notes Line
	550  4500 3200 4500
Wire Notes Line
	3200 4500 3200 5750
Wire Notes Line
	3200 5750 550  5750
Wire Notes Line
	550  5750 550  4500
Text Notes 2150 4750 0    79   ~ 0
Loop Filter
$Comp
L Device:C C?
U 1 1 5FF1FCF3
P 3700 4150
F 0 "C?" H 3815 4196 50  0000 L CNN
F 1 "33pF" H 3815 4105 50  0000 L CNN
F 2 "" H 3738 4000 50  0001 C CNN
F 3 "~" H 3700 4150 50  0001 C CNN
	1    3700 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF2042F
P 3300 4150
F 0 "C?" H 3415 4196 50  0000 L CNN
F 1 "10nF" H 3415 4105 50  0000 L CNN
F 2 "" H 3338 4000 50  0001 C CNN
F 3 "~" H 3300 4150 50  0001 C CNN
	1    3300 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4000 3700 4000
Wire Wire Line
	3700 4000 4550 4000
Connection ~ 3700 4000
$Comp
L power:GND #PWR?
U 1 1 5FF20F9B
P 3300 4300
F 0 "#PWR?" H 3300 4050 50  0001 C CNN
F 1 "GND" H 3305 4127 50  0000 C CNN
F 2 "" H 3300 4300 50  0001 C CNN
F 3 "" H 3300 4300 50  0001 C CNN
	1    3300 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF213A0
P 3700 4300
F 0 "#PWR?" H 3700 4050 50  0001 C CNN
F 1 "GND" H 3705 4127 50  0000 C CNN
F 2 "" H 3700 4300 50  0001 C CNN
F 3 "" H 3700 4300 50  0001 C CNN
	1    3700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:VAA #PWR?
U 1 1 5FF2182D
P 3300 4000
F 0 "#PWR?" H 3300 3850 50  0001 C CNN
F 1 "VAA" H 3315 4173 50  0000 C CNN
F 2 "" H 3300 4000 50  0001 C CNN
F 3 "" H 3300 4000 50  0001 C CNN
	1    3300 4000
	1    0    0    -1  
$EndComp
Connection ~ 3300 4000
$Comp
L Device:R R?
U 1 1 5FF22961
P 4100 3750
F 0 "R?" V 3893 3750 50  0000 C CNN
F 1 "51k" V 3984 3750 50  0000 C CNN
F 2 "" V 4030 3750 50  0001 C CNN
F 3 "~" H 4100 3750 50  0001 C CNN
	1    4100 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3900 4550 3900
$Comp
L power:GND #PWR?
U 1 1 5FF237B3
P 3850 3750
F 0 "#PWR?" H 3850 3500 50  0001 C CNN
F 1 "GND" H 3855 3577 50  0000 C CNN
F 2 "" H 3850 3750 50  0001 C CNN
F 3 "" H 3850 3750 50  0001 C CNN
	1    3850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3750 3950 3750
Wire Wire Line
	4250 3750 4400 3750
Wire Wire Line
	4400 3750 4400 3900
$Comp
L Device:C C?
U 1 1 5FF24B5C
P 3650 3450
F 0 "C?" H 3765 3496 50  0000 L CNN
F 1 "33pF" H 3765 3405 50  0000 L CNN
F 2 "" H 3688 3300 50  0001 C CNN
F 3 "~" H 3650 3450 50  0001 C CNN
	1    3650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3300 4350 3300
Wire Wire Line
	4350 3300 4350 3600
Wire Wire Line
	4350 3600 4550 3600
$Comp
L power:GND #PWR?
U 1 1 5FF256A6
P 3650 3600
F 0 "#PWR?" H 3650 3350 50  0001 C CNN
F 1 "GND" H 3655 3427 50  0000 C CNN
F 2 "" H 3650 3600 50  0001 C CNN
F 3 "" H 3650 3600 50  0001 C CNN
	1    3650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3300 3400 3300
Connection ~ 3650 3300
Text Label 3400 3300 0    50   ~ 0
ENBL
Wire Wire Line
	5350 2800 5350 2700
Wire Wire Line
	5350 2700 4700 2700
Wire Wire Line
	5450 2800 5450 2550
$Comp
L Device:C C?
U 1 1 5FF275B5
P 4700 2850
F 0 "C?" H 4815 2896 50  0000 L CNN
F 1 "33pF" H 4815 2805 50  0000 L CNN
F 2 "" H 4738 2700 50  0001 C CNN
F 3 "~" H 4700 2850 50  0001 C CNN
	1    4700 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF28053
P 4700 3000
F 0 "#PWR?" H 4700 2750 50  0001 C CNN
F 1 "GND" H 4705 2827 50  0000 C CNN
F 2 "" H 4700 3000 50  0001 C CNN
F 3 "" H 4700 3000 50  0001 C CNN
	1    4700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2700 4700 2700
Connection ~ 4700 2700
Text Label 4300 2700 0    50   ~ 0
SDATA
$Comp
L Device:C C?
U 1 1 5FF29382
P 3950 2700
F 0 "C?" H 4065 2746 50  0000 L CNN
F 1 "33pF" H 4065 2655 50  0000 L CNN
F 2 "" H 3988 2550 50  0001 C CNN
F 3 "~" H 3950 2700 50  0001 C CNN
	1    3950 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2550 3950 2550
Connection ~ 3950 2550
Wire Wire Line
	3950 2550 5450 2550
$Comp
L power:GND #PWR?
U 1 1 5FF2A05D
P 3950 2850
F 0 "#PWR?" H 3950 2600 50  0001 C CNN
F 1 "GND" H 3955 2677 50  0000 C CNN
F 2 "" H 3950 2850 50  0001 C CNN
F 3 "" H 3950 2850 50  0001 C CNN
	1    3950 2850
	1    0    0    -1  
$EndComp
Text Label 3600 2550 0    50   ~ 0
SCLK
$Comp
L Device:C C?
U 1 1 5FF2A431
P 3250 2550
F 0 "C?" H 3365 2596 50  0000 L CNN
F 1 "33pF" H 3365 2505 50  0000 L CNN
F 2 "" H 3288 2400 50  0001 C CNN
F 3 "~" H 3250 2550 50  0001 C CNN
	1    3250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2800 5550 2400
Wire Wire Line
	5550 2400 3250 2400
Connection ~ 3250 2400
Wire Wire Line
	3250 2400 2950 2400
Text Label 2950 2400 0    50   ~ 0
ENX
$Comp
L Device:C C?
U 1 1 5FF2D567
P 2600 2400
F 0 "C?" H 2715 2446 50  0000 L CNN
F 1 "33pF" H 2715 2355 50  0000 L CNN
F 2 "" H 2638 2250 50  0001 C CNN
F 3 "~" H 2600 2400 50  0001 C CNN
	1    2600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2800 5650 2250
Wire Wire Line
	5650 2250 2600 2250
Connection ~ 2600 2250
Wire Wire Line
	2600 2250 2200 2250
Text Label 2200 2250 0    50   ~ 0
RESETX
$Comp
L power:GND #PWR?
U 1 1 5FF2EC52
P 2600 2550
F 0 "#PWR?" H 2600 2300 50  0001 C CNN
F 1 "GND" H 2605 2377 50  0000 C CNN
F 2 "" H 2600 2550 50  0001 C CNN
F 3 "" H 2600 2550 50  0001 C CNN
	1    2600 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF2F1A7
P 3250 2700
F 0 "#PWR?" H 3250 2450 50  0001 C CNN
F 1 "GND" H 3255 2527 50  0000 C CNN
F 2 "" H 3250 2700 50  0001 C CNN
F 3 "" H 3250 2700 50  0001 C CNN
	1    3250 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 5FF2FD96
P 5750 1700
F 0 "L?" H 5750 1750 50  0000 R CNN
F 1 "10uH" H 5750 1650 50  0000 R CNN
F 2 "" H 5750 1700 50  0001 C CNN
F 3 "~" H 5750 1700 50  0001 C CNN
	1    5750 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 5FED6352
P 5850 1700
F 0 "L?" H 5903 1746 50  0000 L CNN
F 1 "10uH" H 5903 1655 50  0000 L CNN
F 2 "" H 5850 1700 50  0001 C CNN
F 3 "~" H 5850 1700 50  0001 C CNN
	1    5850 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FED6B7C
P 6200 1700
F 0 "C?" H 6315 1746 50  0000 L CNN
F 1 "100pF" H 6315 1655 50  0000 L CNN
F 2 "" H 6238 1550 50  0001 C CNN
F 3 "~" H 6200 1700 50  0001 C CNN
	1    6200 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FED70BC
P 5450 1700
F 0 "C?" H 5565 1746 50  0000 L CNN
F 1 "100pF" H 5565 1655 50  0000 L CNN
F 2 "" H 5488 1550 50  0001 C CNN
F 3 "~" H 5450 1700 50  0001 C CNN
	1    5450 1700
	-1   0    0    -1  
$EndComp
$Comp
L power:VAA #PWR?
U 1 1 5FED8320
P 5750 1350
F 0 "#PWR?" H 5750 1200 50  0001 C CNN
F 1 "VAA" H 5765 1523 50  0000 C CNN
F 2 "" H 5750 1350 50  0001 C CNN
F 3 "" H 5750 1350 50  0001 C CNN
	1    5750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1350 5750 1400
Wire Wire Line
	6200 1550 6200 1400
Wire Wire Line
	6200 1400 5750 1400
Connection ~ 5750 1400
Wire Wire Line
	5750 1400 5750 1500
Wire Wire Line
	5450 1400 5750 1400
Wire Wire Line
	5450 1400 5450 1550
Wire Wire Line
	5850 1550 5850 1500
Wire Wire Line
	5850 1500 5750 1500
Connection ~ 5750 1500
Wire Wire Line
	5750 1500 5750 1550
$Comp
L power:GND #PWR?
U 1 1 5FEDD7F1
P 5450 1850
F 0 "#PWR?" H 5450 1600 50  0001 C CNN
F 1 "GND" H 5455 1677 50  0000 C CNN
F 2 "" H 5450 1850 50  0001 C CNN
F 3 "" H 5450 1850 50  0001 C CNN
	1    5450 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEDDEE0
P 6200 1850
F 0 "#PWR?" H 6200 1600 50  0001 C CNN
F 1 "GND" H 6205 1677 50  0000 C CNN
F 2 "" H 6200 1850 50  0001 C CNN
F 3 "" H 6200 1850 50  0001 C CNN
	1    6200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1850 5750 2400
Wire Wire Line
	5850 2800 5850 2550
$Comp
L Frontend-rescue:BALUN_1-1-hackrf T?
U 1 1 5FEE321F
P 6300 2500
F 0 "T?" H 6300 2826 70  0000 C CNN
F 1 "BALUN_1-1" H 6300 2705 70  0000 C CNN
F 2 "" H 6300 2500 60  0000 C CNN
F 3 "" H 6300 2500 60  0000 C CNN
	1    6300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2400 5750 2400
Connection ~ 5750 2400
Wire Wire Line
	5750 2400 5750 2800
Wire Wire Line
	6000 2550 5850 2550
Connection ~ 5850 2550
Wire Wire Line
	5850 2550 5850 1850
$Comp
L Device:C C?
U 1 1 5FEE52C5
P 6700 2700
F 0 "C?" H 6815 2746 50  0000 L CNN
F 1 "100pF" H 6815 2655 50  0000 L CNN
F 2 "" H 6738 2550 50  0001 C CNN
F 3 "~" H 6700 2700 50  0001 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2550 6700 2550
$Comp
L power:GND #PWR?
U 1 1 5FEE655E
P 6700 2850
F 0 "#PWR?" H 6700 2600 50  0001 C CNN
F 1 "GND" H 6705 2677 50  0000 C CNN
F 2 "" H 6700 2850 50  0001 C CNN
F 3 "" H 6700 2850 50  0001 C CNN
	1    6700 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEE6A9D
P 6900 2400
F 0 "C?" V 7150 2350 50  0000 L CNN
F 1 "100pF" V 7050 2250 50  0000 L CNN
F 2 "" H 6938 2250 50  0001 C CNN
F 3 "~" H 6900 2400 50  0001 C CNN
	1    6900 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6750 2400 6600 2400
$Comp
L Device:R R?
U 1 1 5FED67F3
P 7250 2950
F 0 "R?" V 7043 2950 50  0000 C CNN
F 1 "220" V 7134 2950 50  0000 C CNN
F 2 "" V 7180 2950 50  0001 C CNN
F 3 "~" H 7250 2950 50  0001 C CNN
	1    7250 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 2950 6450 2950
Wire Wire Line
	6450 2950 6450 2650
Wire Wire Line
	6450 2650 5950 2650
Wire Wire Line
	5950 2650 5950 2800
$Comp
L Device:LED D?
U 1 1 5FEDAA55
P 7650 2950
F 0 "D?" H 7643 2695 50  0000 C CNN
F 1 "LED" H 7643 2786 50  0000 C CNN
F 2 "" H 7650 2950 50  0001 C CNN
F 3 "~" H 7650 2950 50  0001 C CNN
	1    7650 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7500 2950 7400 2950
$Comp
L power:GND #PWR?
U 1 1 5FEDC120
P 7900 3000
F 0 "#PWR?" H 7900 2750 50  0001 C CNN
F 1 "GND" H 7905 2827 50  0000 C CNN
F 2 "" H 7900 3000 50  0001 C CNN
F 3 "" H 7900 3000 50  0001 C CNN
	1    7900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3000 7900 2950
Wire Wire Line
	7900 2950 7800 2950
Text Notes 7450 2650 0    50   ~ 0
Lock detect
Wire Wire Line
	6050 2800 6350 2800
Text Label 6350 2800 2    50   ~ 0
GP03
NoConn ~ 4550 3700
NoConn ~ 4550 3800
$Comp
L Frontend-rescue:BALUN_1-1-hackrf T?
U 1 1 5FEE1677
P 7450 3650
F 0 "T?" H 7450 3976 70  0000 C CNN
F 1 "BALUN_1-1" H 7450 3855 70  0000 C CNN
F 2 "" H 7450 3650 60  0000 C CNN
F 3 "" H 7450 3650 60  0000 C CNN
	1    7450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3700 6850 3700
Wire Wire Line
	6850 3600 7050 3600
Wire Wire Line
	7050 3600 7050 3550
Wire Wire Line
	7050 3550 7150 3550
$Comp
L Device:C C?
U 1 1 5FEE4C50
P 8600 3850
F 0 "C?" H 8715 3896 50  0000 L CNN
F 1 "100pF" H 8715 3805 50  0000 L CNN
F 2 "" H 8638 3700 50  0001 C CNN
F 3 "~" H 8600 3850 50  0001 C CNN
	1    8600 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEE7F41
P 8600 4000
F 0 "#PWR?" H 8600 3750 50  0001 C CNN
F 1 "GND" H 8605 3827 50  0000 C CNN
F 2 "" H 8600 4000 50  0001 C CNN
F 3 "" H 8600 4000 50  0001 C CNN
	1    8600 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEE837A
P 8000 3550
F 0 "C?" V 8250 3500 50  0000 L CNN
F 1 "100pF" V 8150 3400 50  0000 L CNN
F 2 "" H 8038 3400 50  0001 C CNN
F 3 "~" H 8000 3550 50  0001 C CNN
	1    8000 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 3550 7750 3550
$Comp
L Device:C C?
U 1 1 5FEE9E6E
P 7150 4100
F 0 "C?" H 7265 4146 50  0000 L CNN
F 1 "33pF" H 7265 4055 50  0000 L CNN
F 2 "" H 7188 3950 50  0001 C CNN
F 3 "~" H 7150 4100 50  0001 C CNN
	1    7150 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEEC24B
P 7150 4250
F 0 "#PWR?" H 7150 4000 50  0001 C CNN
F 1 "GND" H 7155 4077 50  0000 C CNN
F 2 "" H 7150 4250 50  0001 C CNN
F 3 "" H 7150 4250 50  0001 C CNN
	1    7150 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEEC77A
P 7600 4100
F 0 "C?" H 7715 4146 50  0000 L CNN
F 1 "10nF" H 7715 4055 50  0000 L CNN
F 2 "" H 7638 3950 50  0001 C CNN
F 3 "~" H 7600 4100 50  0001 C CNN
	1    7600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEEE4BF
P 7600 4250
F 0 "#PWR?" H 7600 4000 50  0001 C CNN
F 1 "GND" H 7605 4077 50  0000 C CNN
F 2 "" H 7600 4250 50  0001 C CNN
F 3 "" H 7600 4250 50  0001 C CNN
	1    7600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3700 8600 3700
$Comp
L power:VAA #PWR?
U 1 1 5FEF4445
P 7950 3950
F 0 "#PWR?" H 7950 3800 50  0001 C CNN
F 1 "VAA" H 7965 4123 50  0000 C CNN
F 2 "" H 7950 3950 50  0001 C CNN
F 3 "" H 7950 3950 50  0001 C CNN
	1    7950 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEF772A
P 7150 4700
F 0 "C?" H 7265 4746 50  0000 L CNN
F 1 "33pF" H 7265 4655 50  0000 L CNN
F 2 "" H 7188 4550 50  0001 C CNN
F 3 "~" H 7150 4700 50  0001 C CNN
	1    7150 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEF7730
P 7150 4850
F 0 "#PWR?" H 7150 4600 50  0001 C CNN
F 1 "GND" H 7155 4677 50  0000 C CNN
F 2 "" H 7150 4850 50  0001 C CNN
F 3 "" H 7150 4850 50  0001 C CNN
	1    7150 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEF7736
P 7600 4700
F 0 "C?" H 7715 4746 50  0000 L CNN
F 1 "10nF" H 7715 4655 50  0000 L CNN
F 2 "" H 7638 4550 50  0001 C CNN
F 3 "~" H 7600 4700 50  0001 C CNN
	1    7600 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEF773C
P 7600 4850
F 0 "#PWR?" H 7600 4600 50  0001 C CNN
F 1 "GND" H 7605 4677 50  0000 C CNN
F 2 "" H 7600 4850 50  0001 C CNN
F 3 "" H 7600 4850 50  0001 C CNN
	1    7600 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4100 6950 4100
Wire Wire Line
	6950 4550 7150 4550
Connection ~ 7150 4550
Wire Wire Line
	7150 4550 7600 4550
$Comp
L power:VDD #PWR?
U 1 1 5FEFA681
P 7950 4550
F 0 "#PWR?" H 7950 4400 50  0001 C CNN
F 1 "VDD" H 7965 4723 50  0000 C CNN
F 2 "" H 7950 4550 50  0001 C CNN
F 3 "" H 7950 4550 50  0001 C CNN
	1    7950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4550 7600 4550
Connection ~ 7600 4550
Wire Wire Line
	6950 4100 6950 4550
Wire Wire Line
	7950 3950 7600 3950
Wire Wire Line
	7000 3950 7000 3800
Wire Wire Line
	7000 3800 6850 3800
Connection ~ 7150 3950
Wire Wire Line
	7150 3950 7000 3950
Connection ~ 7600 3950
Wire Wire Line
	7600 3950 7150 3950
Wire Wire Line
	5950 5100 5950 5200
Wire Wire Line
	5950 5200 6350 5200
Wire Wire Line
	6050 5100 6350 5100
Text Label 6350 5100 2    50   ~ 0
GP02
Text Label 6350 5200 2    50   ~ 0
GP01
$Comp
L Device:C C?
U 1 1 5FF10A8B
P 5150 5250
F 0 "C?" H 5265 5296 50  0000 L CNN
F 1 "33pF" H 5265 5205 50  0000 L CNN
F 2 "" H 5188 5100 50  0001 C CNN
F 3 "~" H 5150 5250 50  0001 C CNN
	1    5150 5250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5350 5100 5150 5100
Connection ~ 5150 5100
Wire Wire Line
	5150 5100 4750 5100
Text Label 4750 5100 0    50   ~ 0
MODE
$Comp
L power:GND #PWR?
U 1 1 5FF1375C
P 5150 5400
F 0 "#PWR?" H 5150 5150 50  0001 C CNN
F 1 "GND" H 5155 5227 50  0000 C CNN
F 2 "" H 5150 5400 50  0001 C CNN
F 3 "" H 5150 5400 50  0001 C CNN
	1    5150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5100 5450 5500
Wire Wire Line
	5450 5500 5900 5500
Text Label 5900 5500 2    50   ~ 0
REF_IN
Text Notes 7100 2350 0    50   ~ 10
50 Ohms
Text Notes 8200 3500 0    50   ~ 10
50 Ohms
$EndSCHEMATC
