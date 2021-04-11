EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L hackrf:hackrf_MAX2837 U1
U 1 1 5FDA61AC
P 5650 3700
F 0 "U1" H 5650 3900 60  0000 L CNN
F 1 "hackrf_MAX2837" H 5350 4000 60  0000 L CNN
F 2 "footprints:MAX2837ETM&plus_" H 5650 3700 60  0001 C CNN
F 3 "" H 5650 3700 60  0000 C CNN
	1    5650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3150 4350 3150
$Comp
L power:GND #PWR0103
U 1 1 5FDBB07B
P 4250 3250
F 0 "#PWR0103" H 4250 3000 50  0001 C CNN
F 1 "GND" V 4255 3122 50  0000 R CNN
F 2 "" H 4250 3250 50  0001 C CNN
F 3 "" H 4250 3250 50  0001 C CNN
	1    4250 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3250 4350 3250
$Comp
L power:GND #PWR0104
U 1 1 5FDC599C
P 1850 2750
F 0 "#PWR0104" H 1850 2500 50  0001 C CNN
F 1 "GND" H 1855 2577 50  0000 C CNN
F 2 "" H 1850 2750 50  0001 C CNN
F 3 "" H 1850 2750 50  0001 C CNN
	1    1850 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5FDD636C
P 3050 2350
F 0 "C7" V 2798 2350 50  0000 C CNN
F 1 "22pF" V 2889 2350 50  0000 C CNN
F 2 "" H 3088 2200 50  0001 C CNN
F 3 "~" H 3050 2350 50  0001 C CNN
	1    3050 2350
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 5FDD6D2A
P 3050 2750
F 0 "C8" V 2798 2750 50  0000 C CNN
F 1 "22pF" V 2889 2750 50  0000 C CNN
F 2 "" H 3088 2600 50  0001 C CNN
F 3 "~" H 3050 2750 50  0001 C CNN
	1    3050 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2350 2900 2350
Wire Wire Line
	2650 2750 2900 2750
$Comp
L Device:L L1
U 1 1 5FDDB0C3
P 3400 2550
F 0 "L1" H 3452 2596 50  0000 L CNN
F 1 "6.2n" H 3452 2505 50  0000 L CNN
F 2 "" H 3400 2550 50  0001 C CNN
F 3 "~" H 3400 2550 50  0001 C CNN
	1    3400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2350 3700 2350
Wire Wire Line
	3200 2750 3400 2750
Wire Wire Line
	3400 2750 3400 2700
Wire Wire Line
	3400 2400 3400 2350
Wire Wire Line
	3400 2350 3200 2350
Connection ~ 3400 2350
Wire Wire Line
	3650 2750 3400 2750
Connection ~ 3400 2750
NoConn ~ 6950 3450
NoConn ~ 6950 3350
$Comp
L Device:C C15
U 1 1 5FF7A13F
P 4100 2900
F 0 "C15" V 3848 2900 50  0000 C CNN
F 1 "22pF" V 3939 2900 50  0000 C CNN
F 2 "" H 4138 2750 50  0001 C CNN
F 3 "~" H 4100 2900 50  0001 C CNN
	1    4100 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5FF7C6C8
P 3850 2950
F 0 "#PWR0111" H 3850 2700 50  0001 C CNN
F 1 "GND" H 3855 2777 50  0000 C CNN
F 2 "" H 3850 2950 50  0001 C CNN
F 3 "" H 3850 2950 50  0001 C CNN
	1    3850 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3550 4350 3550
Wire Wire Line
	3650 2750 3650 3550
Wire Wire Line
	3700 2350 3700 3450
Wire Wire Line
	3700 3450 4350 3450
Wire Wire Line
	3850 2950 3850 2900
Wire Wire Line
	3850 2900 3950 2900
Wire Wire Line
	4250 2900 4250 3150
$Comp
L Device:C C?
U 1 1 602785CE
P 4000 3950
F 0 "C?" V 3748 3950 50  0000 C CNN
F 1 "22pF" V 3839 3950 50  0000 C CNN
F 2 "" H 4038 3800 50  0001 C CNN
F 3 "~" H 4000 3950 50  0001 C CNN
	1    4000 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 602890BB
P 4000 4100
F 0 "#PWR0107" H 4000 3850 50  0001 C CNN
F 1 "GND" H 4005 3927 50  0000 C CNN
F 2 "" H 4000 4100 50  0001 C CNN
F 3 "" H 4000 4100 50  0001 C CNN
	1    4000 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60292AAB
P 4250 5150
F 0 "R?" V 4150 5150 50  0000 C CNN
F 1 "0" V 4250 5150 50  0000 C CNN
F 2 "" V 4180 5150 50  0001 C CNN
F 3 "~" H 4250 5150 50  0001 C CNN
	1    4250 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 5150 5300 5150
Wire Wire Line
	5300 5150 5300 5000
Text GLabel 3900 4950 0    50   Input ~ 0
SPI1_SCK
Wire Wire Line
	3900 4950 4000 4950
Wire Wire Line
	4000 4950 4000 5150
Wire Wire Line
	4000 5150 4100 5150
NoConn ~ 5600 5000
$Comp
L Device:C C?
U 1 1 602E954C
P 5650 5650
F 0 "C?" V 5398 5650 50  0000 C CNN
F 1 "10nF" V 5489 5650 50  0000 C CNN
F 2 "" H 5688 5500 50  0001 C CNN
F 3 "~" H 5650 5650 50  0001 C CNN
	1    5650 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 5350 5650 5350
Wire Wire Line
	5650 5350 5650 5450
$Comp
L power:GND #PWR0112
U 1 1 602ED381
P 5650 5950
F 0 "#PWR0112" H 5650 5700 50  0001 C CNN
F 1 "GND" H 5655 5777 50  0000 C CNN
F 2 "" H 5650 5950 50  0001 C CNN
F 3 "" H 5650 5950 50  0001 C CNN
	1    5650 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5950 5650 5800
Text GLabel 5750 5450 2    50   Input ~ 0
VDD
Connection ~ 5650 5450
Wire Wire Line
	5650 5450 5650 5500
$Comp
L Device:C C?
U 1 1 602F4DEF
P 6150 5650
F 0 "C?" V 5898 5650 50  0000 C CNN
F 1 "10nF" V 5989 5650 50  0000 C CNN
F 2 "" H 6188 5500 50  0001 C CNN
F 3 "~" H 6150 5650 50  0001 C CNN
	1    6150 5650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 602F5473
P 6050 5950
F 0 "#PWR0113" H 6050 5700 50  0001 C CNN
F 1 "GND" H 6055 5777 50  0000 C CNN
F 2 "" H 6050 5950 50  0001 C CNN
F 3 "" H 6050 5950 50  0001 C CNN
	1    6050 5950
	1    0    0    -1  
$EndComp
Text GLabel 6250 5450 2    50   Input ~ 0
VDD
Wire Wire Line
	6050 5800 6050 5950
Wire Wire Line
	5650 5450 5750 5450
Wire Wire Line
	6150 5500 6150 5450
Wire Wire Line
	6150 5350 5800 5350
Wire Wire Line
	6250 5450 6150 5450
Connection ~ 6150 5450
Wire Wire Line
	6150 5450 6150 5350
Wire Wire Line
	6150 5800 6050 5800
$Comp
L Device:C C?
U 1 1 60305E98
P 6800 5650
F 0 "C?" V 6548 5650 50  0000 C CNN
F 1 "10nF" V 6639 5650 50  0000 C CNN
F 2 "" H 6838 5500 50  0001 C CNN
F 3 "~" H 6800 5650 50  0001 C CNN
	1    6800 5650
	-1   0    0    1   
$EndComp
Text GLabel 6950 5450 2    50   Input ~ 0
VDD
Wire Wire Line
	5900 5300 6800 5300
Wire Wire Line
	6800 5300 6800 5450
Wire Wire Line
	6950 5450 6800 5450
Connection ~ 6800 5450
Wire Wire Line
	6800 5450 6800 5500
$Comp
L power:GND #PWR0114
U 1 1 6030B87C
P 6400 5950
F 0 "#PWR0114" H 6400 5700 50  0001 C CNN
F 1 "GND" H 6405 5777 50  0000 C CNN
F 2 "" H 6400 5950 50  0001 C CNN
F 3 "" H 6400 5950 50  0001 C CNN
	1    6400 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5950 6400 5800
Wire Wire Line
	6400 5800 6800 5800
Wire Wire Line
	5900 5000 5900 5300
Wire Wire Line
	5800 5000 5800 5350
Wire Wire Line
	5700 5000 5700 5350
$Comp
L power:GND #PWR0115
U 1 1 6031E78A
P 6000 5100
F 0 "#PWR0115" H 6000 4850 50  0001 C CNN
F 1 "GND" H 6005 4927 50  0000 C CNN
F 2 "" H 6000 5100 50  0001 C CNN
F 3 "" H 6000 5100 50  0001 C CNN
	1    6000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5100 6000 5000
$Comp
L Device:C C?
U 1 1 603215A5
P 7650 5250
F 0 "C?" V 7600 5350 50  0000 C CNN
F 1 "180pF" V 7489 5250 50  0000 C CNN
F 2 "" H 7688 5100 50  0001 C CNN
F 3 "~" H 7650 5250 50  0001 C CNN
	1    7650 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 603235A8
P 7400 5450
F 0 "R?" V 7193 5450 50  0000 C CNN
F 1 "475" V 7284 5450 50  0000 C CNN
F 2 "" V 7330 5450 50  0001 C CNN
F 3 "~" H 7400 5450 50  0001 C CNN
	1    7400 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60324995
P 7900 5450
F 0 "R?" V 7693 5450 50  0000 C CNN
F 1 "475" V 7784 5450 50  0000 C CNN
F 2 "" V 7830 5450 50  0001 C CNN
F 3 "~" H 7900 5450 50  0001 C CNN
	1    7900 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 6032557A
P 7650 5650
F 0 "C?" V 7700 5750 50  0000 C CNN
F 1 "180pF" V 7800 5650 50  0000 C CNN
F 2 "" H 7688 5500 50  0001 C CNN
F 3 "~" H 7650 5650 50  0001 C CNN
	1    7650 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 5300 7400 5250
Wire Wire Line
	7400 5250 7500 5250
Wire Wire Line
	7800 5250 7900 5250
Wire Wire Line
	7900 5250 7900 5300
Wire Wire Line
	7900 5600 7900 5650
Wire Wire Line
	7900 5650 7800 5650
Wire Wire Line
	7500 5650 7400 5650
Wire Wire Line
	7400 5650 7400 5600
Wire Wire Line
	6200 5000 7900 5000
Wire Wire Line
	7900 5000 7900 5250
Connection ~ 7900 5250
Wire Wire Line
	6100 5000 6100 5100
Wire Wire Line
	6100 5100 7400 5100
Wire Wire Line
	7400 5100 7400 5250
Connection ~ 7400 5250
Text GLabel 6950 4550 3    50   Input ~ 0
Trx_Enable
Wire Wire Line
	6950 4550 6950 4250
$Comp
L power:GND #PWR0116
U 1 1 60342D46
P 7100 4750
F 0 "#PWR0116" H 7100 4500 50  0001 C CNN
F 1 "GND" H 7105 4577 50  0000 C CNN
F 2 "" H 7100 4750 50  0001 C CNN
F 3 "" H 7100 4750 50  0001 C CNN
	1    7100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4750 7100 4150
Wire Wire Line
	7100 4150 6950 4150
$Comp
L Device:C C?
U 1 1 60348680
P 7350 4200
F 0 "C?" V 7098 4200 50  0000 C CNN
F 1 "1uF" V 7189 4200 50  0000 C CNN
F 2 "" H 7388 4050 50  0001 C CNN
F 3 "~" H 7350 4200 50  0001 C CNN
	1    7350 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 4050 6950 4050
$Comp
L power:GND #PWR0117
U 1 1 6034C833
P 7350 4450
F 0 "#PWR0117" H 7350 4200 50  0001 C CNN
F 1 "GND" H 7355 4277 50  0000 C CNN
F 2 "" H 7350 4450 50  0001 C CNN
F 3 "" H 7350 4450 50  0001 C CNN
	1    7350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4450 7350 4350
$Comp
L Device:C C?
U 1 1 60351476
P 7750 4100
F 0 "C?" V 7498 4100 50  0000 C CNN
F 1 "100nF" V 7589 4100 50  0000 C CNN
F 2 "" H 7788 3950 50  0001 C CNN
F 3 "~" H 7750 4100 50  0001 C CNN
	1    7750 4100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 6035D352
P 7750 4250
F 0 "#PWR0119" H 7750 4000 50  0001 C CNN
F 1 "GND" H 7755 4077 50  0000 C CNN
F 2 "" H 7750 4250 50  0001 C CNN
F 3 "" H 7750 4250 50  0001 C CNN
	1    7750 4250
	1    0    0    -1  
$EndComp
Text GLabel 8300 3950 2    50   Input ~ 0
VDD
Text GLabel 6950 3850 2    50   Input ~ 0
SPI1_MISO
Text GLabel 6950 3750 2    50   Input ~ 0
SPI1_CS1
Text GLabel 6950 3650 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 6950 3550 2    50   Input ~ 0
RSSI
$Comp
L Device:R R?
U 1 1 6039E76D
P 10100 3850
F 0 "R?" V 10000 3850 50  0000 C CNN
F 1 "0" V 10100 3850 50  0000 C CNN
F 2 "" V 10030 3850 50  0001 C CNN
F 3 "~" H 10100 3850 50  0001 C CNN
	1    10100 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6039FAE8
P 10100 4050
F 0 "R?" V 10000 4050 50  0000 C CNN
F 1 "0" V 10100 4050 50  0000 C CNN
F 2 "" V 10030 4050 50  0001 C CNN
F 3 "~" H 10100 4050 50  0001 C CNN
	1    10100 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3250 8100 3250
Wire Wire Line
	8100 3250 8100 3700
Wire Wire Line
	8100 3700 9050 3700
Wire Wire Line
	9050 3700 9050 4050
Wire Wire Line
	9050 4050 9950 4050
Wire Wire Line
	9950 3850 9100 3850
Wire Wire Line
	9100 3850 9100 3650
Wire Wire Line
	9100 3650 8150 3650
Wire Wire Line
	8150 3650 8150 3150
Wire Wire Line
	8150 3150 6950 3150
$Comp
L Device:R R?
U 1 1 603B53B5
P 10100 3600
F 0 "R?" V 10000 3600 50  0000 C CNN
F 1 "0" V 10100 3600 50  0000 C CNN
F 2 "" V 10030 3600 50  0001 C CNN
F 3 "~" H 10100 3600 50  0001 C CNN
	1    10100 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 603B5C57
P 10100 3400
F 0 "R?" V 10000 3400 50  0000 C CNN
F 1 "0" V 10100 3400 50  0000 C CNN
F 2 "" V 10030 3400 50  0001 C CNN
F 3 "~" H 10100 3400 50  0001 C CNN
	1    10100 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 3400 9750 3400
Wire Wire Line
	9750 3400 9750 2250
Wire Wire Line
	9750 2250 6100 2250
Wire Wire Line
	6100 2250 6100 2400
Wire Wire Line
	6200 2400 6200 2300
Wire Wire Line
	6200 2300 9700 2300
Wire Wire Line
	9700 2300 9700 3600
Wire Wire Line
	9700 3600 9950 3600
$Comp
L Device:C C?
U 1 1 603DBC76
P 6300 1800
F 0 "C?" V 6048 1800 50  0000 C CNN
F 1 "10nF" V 6139 1800 50  0000 C CNN
F 2 "" H 6338 1650 50  0001 C CNN
F 3 "~" H 6300 1800 50  0001 C CNN
	1    6300 1800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 603DD169
P 6300 2000
F 0 "#PWR0120" H 6300 1750 50  0001 C CNN
F 1 "GND" H 6305 1827 50  0000 C CNN
F 2 "" H 6300 2000 50  0001 C CNN
F 3 "" H 6300 2000 50  0001 C CNN
	1    6300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2000 6300 1950
Wire Wire Line
	6000 2400 6000 1650
Wire Wire Line
	6000 1650 6300 1650
Text GLabel 6500 1650 2    50   Input ~ 0
VDD
Wire Wire Line
	6500 1650 6300 1650
Connection ~ 6300 1650
Text GLabel 6550 900  2    50   Input ~ 0
VDD
$Comp
L Device:C C?
U 1 1 603F8A2A
P 6300 1050
F 0 "C?" V 6048 1050 50  0000 C CNN
F 1 "10nF" V 6139 1050 50  0000 C CNN
F 2 "" H 6338 900 50  0001 C CNN
F 3 "~" H 6300 1050 50  0001 C CNN
	1    6300 1050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 603F90D4
P 6300 1250
F 0 "#PWR0121" H 6300 1000 50  0001 C CNN
F 1 "GND" H 6305 1077 50  0000 C CNN
F 2 "" H 6300 1250 50  0001 C CNN
F 3 "" H 6300 1250 50  0001 C CNN
	1    6300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1250 6300 1200
Wire Wire Line
	6300 900  6550 900 
Wire Wire Line
	6300 900  5800 900 
Wire Wire Line
	5800 900  5800 2400
Connection ~ 6300 900 
Text Notes 6300 2600 0    50   ~ 0
Pines 42 43 44 45 --> Para TX (no usamos)
$Comp
L Device:C C?
U 1 1 6040CEDC
P 5450 1250
F 0 "C?" V 5198 1250 50  0000 C CNN
F 1 "22pF" V 5289 1250 50  0000 C CNN
F 2 "" H 5488 1100 50  0001 C CNN
F 3 "~" H 5450 1250 50  0001 C CNN
	1    5450 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 6040DAFD
P 5450 1500
F 0 "#PWR0122" H 5450 1250 50  0001 C CNN
F 1 "GND" H 5455 1327 50  0000 C CNN
F 2 "" H 5450 1500 50  0001 C CNN
F 3 "" H 5450 1500 50  0001 C CNN
	1    5450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1500 5450 1400
Text GLabel 5650 900  1    50   Input ~ 0
VDD
Wire Wire Line
	5650 900  5650 1100
Wire Wire Line
	5650 1100 5450 1100
Wire Wire Line
	5450 1100 5300 1100
Connection ~ 5450 1100
Text GLabel 5100 1750 0    50   Input ~ 0
TXENABLE
Text GLabel 4850 1950 0    50   Input ~ 0
Trx_Rx_Enable
Wire Wire Line
	5100 1750 5200 1750
Wire Wire Line
	5200 1750 5200 2400
Wire Wire Line
	4850 1950 5100 1950
Wire Wire Line
	5100 1950 5100 2400
Text GLabel 1650 2350 0    50   Input ~ 0
RF_IF
$Comp
L Transceptor-rescue:MAX1193ETI+-MAX1193 U?
U 1 1 602D823E
P 12300 1950
F 0 "U?" H 13100 2337 60  0000 C CNN
F 1 "MAX1193ETI+" H 13100 2231 60  0000 C CNN
F 2 "max1193pretty:MAX1193ETI&plus_T" H 13100 2190 60  0001 C CNN
F 3 "" H 12300 1950 60  0000 C CNN
	1    12300 1950
	1    0    0    -1  
$EndComp
Text GLabel 10450 3400 2    50   Input ~ 0
INA+
Text GLabel 10450 3600 2    50   Input ~ 0
INA-
Text GLabel 10450 3850 2    50   Input ~ 0
INB+
Text GLabel 10450 4050 2    50   Input ~ 0
INB-
Wire Wire Line
	10450 3400 10250 3400
Wire Wire Line
	10450 3600 10250 3600
Wire Wire Line
	10450 3850 10250 3850
Wire Wire Line
	10450 4050 10250 4050
Text GLabel 12300 1950 0    50   Input ~ 0
INA-
Text GLabel 12300 2050 0    50   Input ~ 0
INA+
Text GLabel 12300 2550 0    50   Input ~ 0
INB-
Text GLabel 12300 2450 0    50   Input ~ 0
INB+
Text GLabel 12300 2150 0    50   Input ~ 0
GND1193
Wire Wire Line
	10950 1950 10950 2050
Wire Wire Line
	10800 1950 10950 1950
Text GLabel 10800 1950 0    50   Input ~ 0
VDD
Wire Wire Line
	11150 2350 10950 2350
Wire Wire Line
	11150 2450 11150 2350
$Comp
L power:GND #PWR?
U 1 1 603A3559
P 11150 2450
F 0 "#PWR?" H 11150 2200 50  0001 C CNN
F 1 "GND" H 11155 2277 50  0000 C CNN
F 2 "" H 11150 2450 50  0001 C CNN
F 3 "" H 11150 2450 50  0001 C CNN
	1    11150 2450
	1    0    0    -1  
$EndComp
Connection ~ 11150 2350
Wire Wire Line
	11350 2350 11150 2350
Wire Wire Line
	11350 2050 10950 2050
$Comp
L Device:C C?
U 1 1 6035F275
P 11350 2200
F 0 "C?" V 11098 2200 50  0000 C CNN
F 1 "0.1uF" V 11189 2200 50  0000 C CNN
F 2 "" H 11388 2050 50  0001 C CNN
F 3 "~" H 11350 2200 50  0001 C CNN
	1    11350 2200
	-1   0    0    1   
$EndComp
Connection ~ 10950 2050
$Comp
L Device:C C?
U 1 1 6035E627
P 10950 2200
F 0 "C?" V 10698 2200 50  0000 C CNN
F 1 "2.2uF" V 10789 2200 50  0000 C CNN
F 2 "" H 10988 2050 50  0001 C CNN
F 3 "~" H 10950 2200 50  0001 C CNN
	1    10950 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	12300 2650 11700 2650
Wire Wire Line
	11700 2650 11700 2050
Wire Wire Line
	11700 2050 11350 2050
Connection ~ 11350 2050
$Comp
L Device:C C?
U 1 1 6041305D
P 10950 2950
F 0 "C?" V 10698 2950 50  0000 C CNN
F 1 "2.2uF" V 10789 2950 50  0000 C CNN
F 2 "" H 10988 2800 50  0001 C CNN
F 3 "~" H 10950 2950 50  0001 C CNN
	1    10950 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 60413718
P 11350 2950
F 0 "C?" V 11098 2950 50  0000 C CNN
F 1 "0.1uF" V 11189 2950 50  0000 C CNN
F 2 "" H 11388 2800 50  0001 C CNN
F 3 "~" H 11350 2950 50  0001 C CNN
	1    11350 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60414246
P 11150 3100
F 0 "#PWR?" H 11150 2850 50  0001 C CNN
F 1 "GND" H 11155 2927 50  0000 C CNN
F 2 "" H 11150 3100 50  0001 C CNN
F 3 "" H 11150 3100 50  0001 C CNN
	1    11150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3100 11150 3100
Connection ~ 11150 3100
Wire Wire Line
	11150 3100 11350 3100
Wire Wire Line
	10950 2800 11350 2800
Text GLabel 10800 2700 0    50   Input ~ 0
VDD
Wire Wire Line
	10800 2700 10950 2700
Wire Wire Line
	10950 2700 10950 2800
Connection ~ 10950 2800
Wire Wire Line
	11350 2800 11350 2750
Wire Wire Line
	11350 2750 12300 2750
Connection ~ 11350 2800
Wire Wire Line
	11900 3550 11900 3050
Wire Wire Line
	11700 3850 11900 3850
Connection ~ 11700 3850
Wire Wire Line
	11500 3850 11700 3850
Wire Wire Line
	11500 3550 11900 3550
Connection ~ 11500 3550
Wire Wire Line
	11400 3550 11500 3550
$Comp
L power:GND #PWR?
U 1 1 60440365
P 11700 3850
F 0 "#PWR?" H 11700 3600 50  0001 C CNN
F 1 "GND" H 11705 3677 50  0000 C CNN
F 2 "" H 11700 3850 50  0001 C CNN
F 3 "" H 11700 3850 50  0001 C CNN
	1    11700 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6043F388
P 11500 3700
F 0 "C?" V 11248 3700 50  0000 C CNN
F 1 "2.2uF" V 11339 3700 50  0000 C CNN
F 2 "" H 11538 3550 50  0001 C CNN
F 3 "~" H 11500 3700 50  0001 C CNN
	1    11500 3700
	-1   0    0    1   
$EndComp
Text GLabel 11400 3550 0    50   Input ~ 0
VDD
Wire Wire Line
	11900 3050 12300 3050
Text GLabel 15400 2050 2    50   Input ~ 0
VDD
Connection ~ 11900 3550
$Comp
L Device:C C?
U 1 1 6043FA03
P 11900 3700
F 0 "C?" V 11648 3700 50  0000 C CNN
F 1 "0.1uF" V 11739 3700 50  0000 C CNN
F 2 "" H 11938 3550 50  0001 C CNN
F 3 "~" H 11900 3700 50  0001 C CNN
	1    11900 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 604785CC
P 15300 2200
F 0 "C?" V 15048 2200 50  0000 C CNN
F 1 "0.1uF" V 15139 2200 50  0000 C CNN
F 2 "" H 15338 2050 50  0001 C CNN
F 3 "~" H 15300 2200 50  0001 C CNN
	1    15300 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 604798D7
P 14900 2200
F 0 "C?" V 14648 2200 50  0000 C CNN
F 1 "2.2uF" V 14739 2200 50  0000 C CNN
F 2 "" H 14938 2050 50  0001 C CNN
F 3 "~" H 14900 2200 50  0001 C CNN
	1    14900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	14900 2050 15300 2050
Connection ~ 15300 2050
Wire Wire Line
	15300 2050 15400 2050
Wire Wire Line
	14900 2350 15100 2350
$Comp
L power:GND #PWR?
U 1 1 6048C50A
P 15100 2350
F 0 "#PWR?" H 15100 2100 50  0001 C CNN
F 1 "GND" H 15105 2177 50  0000 C CNN
F 2 "" H 15100 2350 50  0001 C CNN
F 3 "" H 15100 2350 50  0001 C CNN
	1    15100 2350
	1    0    0    -1  
$EndComp
Connection ~ 15100 2350
Wire Wire Line
	15100 2350 15300 2350
Wire Wire Line
	14900 2050 13900 2050
Connection ~ 14900 2050
$Comp
L Device:C C?
U 1 1 6049FB43
P 14750 2550
F 0 "C?" V 14800 2650 50  0000 C CNN
F 1 "0.33uF" V 14900 2550 50  0000 C CNN
F 2 "" H 14788 2400 50  0001 C CNN
F 3 "~" H 14750 2550 50  0001 C CNN
	1    14750 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 604A0B95
P 14750 2850
F 0 "C?" V 15000 2850 50  0000 C CNN
F 1 "0.33uF" V 14900 2850 50  0000 C CNN
F 2 "" H 14788 2700 50  0001 C CNN
F 3 "~" H 14750 2850 50  0001 C CNN
	1    14750 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604A1902
P 14900 2550
F 0 "#PWR?" H 14900 2300 50  0001 C CNN
F 1 "GND" H 14905 2377 50  0000 C CNN
F 2 "" H 14900 2550 50  0001 C CNN
F 3 "" H 14900 2550 50  0001 C CNN
	1    14900 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 604A2502
P 15000 2850
F 0 "#PWR?" H 15000 2600 50  0001 C CNN
F 1 "GND" H 15005 2677 50  0000 C CNN
F 2 "" H 15000 2850 50  0001 C CNN
F 3 "" H 15000 2850 50  0001 C CNN
	1    15000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	14550 2150 13900 2150
Wire Wire Line
	14500 2250 13900 2250
Wire Wire Line
	14550 2150 14550 2550
Wire Wire Line
	14550 2550 14600 2550
Wire Wire Line
	15000 2850 14900 2850
Wire Wire Line
	14600 2850 14500 2850
Wire Wire Line
	14500 2850 14500 2250
$Comp
L Device:C C?
U 1 1 60505AC2
P 14750 3250
F 0 "C?" V 15000 3250 50  0000 C CNN
F 1 "0.33uF" V 14900 3250 50  0000 C CNN
F 2 "" H 14788 3100 50  0001 C CNN
F 3 "~" H 14750 3250 50  0001 C CNN
	1    14750 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60506EB7
P 14950 3250
F 0 "#PWR?" H 14950 3000 50  0001 C CNN
F 1 "GND" H 14955 3077 50  0000 C CNN
F 2 "" H 14950 3250 50  0001 C CNN
F 3 "" H 14950 3250 50  0001 C CNN
	1    14950 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14950 3250 14900 3250
Wire Wire Line
	14600 3250 14600 2900
Wire Wire Line
	14600 2900 14450 2900
Wire Wire Line
	14450 2900 14450 2350
Wire Wire Line
	14450 2350 13900 2350
Text Notes 13950 3850 0    50   ~ 0
Pines 13 al 23 van al micro
Text GLabel 12300 2250 0    50   Input ~ 0
CLK_45Mhz
$Comp
L power:GND #PWR?
U 1 1 6030CF99
P 4350 2800
F 0 "#PWR?" H 4350 2550 50  0001 C CNN
F 1 "GND" V 4355 2672 50  0000 R CNN
F 2 "" H 4350 2800 50  0001 C CNN
F 3 "" H 4350 2800 50  0001 C CNN
	1    4350 2800
	1    0    0    -1  
$EndComp
NoConn ~ 4350 3350
NoConn ~ 4350 3650
NoConn ~ 4350 3850
NoConn ~ 4350 3950
Text GLabel 3950 3750 0    50   Input ~ 0
VDD
NoConn ~ 4350 4250
Text GLabel 4250 2700 1    50   Input ~ 0
VDD
Wire Wire Line
	4250 2700 4250 2900
Connection ~ 4250 2900
Wire Wire Line
	3950 3750 4000 3750
Wire Wire Line
	4000 3800 4000 3750
Connection ~ 4000 3750
Wire Wire Line
	4000 3750 4350 3750
$Comp
L Device:R R?
U 1 1 60373025
P 4200 4100
F 0 "R?" H 4350 4100 50  0000 R CNN
F 1 "100" V 4200 4150 50  0000 R CNN
F 2 "" V 4130 4100 50  0001 C CNN
F 3 "~" H 4200 4100 50  0001 C CNN
	1    4200 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 3950 4300 4050
Wire Wire Line
	4300 4050 4350 4050
Wire Wire Line
	4200 3950 4300 3950
Wire Wire Line
	4350 4150 4300 4150
Wire Wire Line
	4300 4150 4300 4250
Wire Wire Line
	4300 4250 4200 4250
$Comp
L power:GND #PWR?
U 1 1 603932CA
P 4900 4800
F 0 "#PWR?" H 4900 4550 50  0001 C CNN
F 1 "GND" H 4905 4627 50  0000 C CNN
F 2 "" H 4900 4800 50  0001 C CNN
F 3 "" H 4900 4800 50  0001 C CNN
	1    4900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5000 5000 5000
Wire Wire Line
	5000 5000 5000 4750
Wire Wire Line
	5000 4750 4900 4750
Wire Wire Line
	4900 4750 4900 4800
NoConn ~ 5200 5000
Text Notes 500  4750 0    50   ~ 0
DUDAS:\n\n1. Pines B0-B7 a masa? se usan? \nMaximum gain, B7:B1 = 0000000 \nMinimum gain, B7:B1 = 1111111\n\n2. Pin 7 VCCTXPAD ver\n\n3. Pines 10 y 11 ver\n\n4. Pin 13 está bien a GND?\n\n5. Pin 16 ver\n\n6. Pines 42 43 44 45 Cuál es la opción de menos ruido? GND? soldado al pad?
$Comp
L Tesis2020-21:2450BL05A0100 T?
U 1 1 60379822
P 1850 2350
F 0 "T?" H 2250 2575 50  0000 C CNN
F 1 "2450BL05A0100" H 2250 2484 50  0000 C CNN
F 2 "Tesis2020-21:0202_Balun" H 3000 2450 50  0001 L CNN
F 3 "https://www.arrow.com/en/products/2450bl05a0100t/johanson-dielectrics" H 3000 2350 50  0001 L CNN
F 4 "Signal Conditioning 2.4G BALUN" H 3000 2250 50  0001 L CNN "Description"
F 5 "0.45" H 3000 2150 50  0001 L CNN "Height"
F 6 "JOHANSON TECHNOLOGY" H 3000 2050 50  0001 L CNN "Manufacturer_Name"
F 7 "2450BL05A0100T" H 3000 1950 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "609-2450BL05A0100T" H 3000 1850 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Johanson-Technology/2450BL05A0100T?qs=YCa%2FAAYMW03iXq%252BC5Jwdmg%3D%3D" H 3000 1750 50  0001 L CNN "Mouser Price/Stock"
F 10 "2450BL05A0100T" H 3000 1650 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/2450bl05a0100t/johanson-dielectrics" H 3000 1550 50  0001 L CNN "Arrow Price/Stock"
	1    1850 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2750 2650 2500
Wire Wire Line
	1850 2750 1850 2500
Wire Wire Line
	1650 2350 1850 2350
Wire Wire Line
	6950 3950 7750 3950
Connection ~ 7750 3950
Wire Wire Line
	7750 3950 8300 3950
NoConn ~ 5900 2400
Wire Wire Line
	5300 1100 5300 2400
$Comp
L power:GND #PWR?
U 1 1 603DB5A9
P 5700 2400
F 0 "#PWR?" H 5700 2150 50  0001 C CNN
F 1 "GND" H 5705 2227 50  0000 C CNN
F 2 "" H 5700 2400 50  0001 C CNN
F 3 "" H 5700 2400 50  0001 C CNN
	1    5700 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 603DC640
P 5600 2400
F 0 "#PWR?" H 5600 2150 50  0001 C CNN
F 1 "GND" H 5600 2150 50  0000 C CNN
F 2 "" H 5600 2400 50  0001 C CNN
F 3 "" H 5600 2400 50  0001 C CNN
	1    5600 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 603DC922
P 5500 2400
F 0 "#PWR?" H 5500 2150 50  0001 C CNN
F 1 "GND" H 5505 2227 50  0000 C CNN
F 2 "" H 5500 2400 50  0001 C CNN
F 3 "" H 5500 2400 50  0001 C CNN
	1    5500 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 603DCBC3
P 5400 2400
F 0 "#PWR?" H 5400 2150 50  0001 C CNN
F 1 "GND" H 5400 2150 50  0000 C CNN
F 2 "" H 5400 2400 50  0001 C CNN
F 3 "" H 5400 2400 50  0001 C CNN
	1    5400 2400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 603671E8
P 12300 2850
F 0 "#PWR?" H 12300 2600 50  0001 C CNN
F 1 "GND" V 12305 2677 50  0000 C CNN
F 2 "" H 12300 2850 50  0001 C CNN
F 3 "" H 12300 2850 50  0001 C CNN
	1    12300 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60367BE1
P 12300 2950
F 0 "#PWR?" H 12300 2700 50  0001 C CNN
F 1 "GND" V 12305 2777 50  0000 C CNN
F 2 "" H 12300 2950 50  0001 C CNN
F 3 "" H 12300 2950 50  0001 C CNN
	1    12300 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60367F82
P 12300 2350
F 0 "#PWR?" H 12300 2100 50  0001 C CNN
F 1 "GND" V 12305 2177 50  0000 C CNN
F 2 "" H 12300 2350 50  0001 C CNN
F 3 "" H 12300 2350 50  0001 C CNN
	1    12300 2350
	0    1    1    0   
$EndComp
Text GLabel 12300 3150 0    50   Input ~ 0
D7
Text GLabel 12300 3250 0    50   Input ~ 0
D6
Text GLabel 13900 3350 2    50   Input ~ 0
D5
Text GLabel 13900 3250 2    50   Input ~ 0
D4
Text GLabel 13900 3150 2    50   Input ~ 0
A_B
Text GLabel 13900 3050 2    50   Input ~ 0
D3
Text GLabel 13900 2950 2    50   Input ~ 0
D2
Text GLabel 13900 2850 2    50   Input ~ 0
D1
Text GLabel 13900 2750 2    50   Input ~ 0
D0
Text GLabel 13900 2650 2    50   Input ~ 0
PD1
Text GLabel 13900 2550 2    50   Input ~ 0
PD0
$Comp
L Device:C C?
U 1 1 6036934C
P 14300 2600
F 0 "C?" V 14350 2700 50  0000 C CNN
F 1 "0.1uF" V 14450 2600 50  0000 C CNN
F 2 "" H 14338 2450 50  0001 C CNN
F 3 "~" H 14300 2600 50  0001 C CNN
	1    14300 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	13900 2450 14300 2450
$Comp
L power:GND #PWR?
U 1 1 60375072
P 14300 2750
F 0 "#PWR?" H 14300 2500 50  0001 C CNN
F 1 "GND" H 14305 2577 50  0000 C CNN
F 2 "" H 14300 2750 50  0001 C CNN
F 3 "" H 14300 2750 50  0001 C CNN
	1    14300 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60375AFF
P 13900 1950
F 0 "#PWR?" H 13900 1700 50  0001 C CNN
F 1 "GND" H 13905 1777 50  0000 C CNN
F 2 "" H 13900 1950 50  0001 C CNN
F 3 "" H 13900 1950 50  0001 C CNN
	1    13900 1950
	-1   0    0    1   
$EndComp
Text GLabel 3550 1150 0    50   Input ~ 0
TXENABLE
$Comp
L Device:R R?
U 1 1 6072CDC3
P 3650 1300
F 0 "R?" H 3720 1346 50  0000 L CNN
F 1 "10k" H 3720 1255 50  0000 L CNN
F 2 "" V 3580 1300 50  0001 C CNN
F 3 "~" H 3650 1300 50  0001 C CNN
	1    3650 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1150 3650 1150
$Comp
L power:GND #PWR?
U 1 1 607344AB
P 3650 1450
F 0 "#PWR?" H 3650 1200 50  0001 C CNN
F 1 "GND" H 3655 1277 50  0000 C CNN
F 2 "" H 3650 1450 50  0001 C CNN
F 3 "" H 3650 1450 50  0001 C CNN
	1    3650 1450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
