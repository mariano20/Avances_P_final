EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 4
Title "MCU, Power, USB"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B_Micro J3
U 1 1 606516B5
P 950 5150
F 0 "J3" H 1007 5617 50  0000 C CNN
F 1 "USB_B_Micro" H 1007 5526 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Amphenol_10104110_Horizontal" H 1100 5100 50  0001 C CNN
F 3 "~" H 1100 5100 50  0001 C CNN
	1    950  5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR070
U 1 1 60652B42
P 950 5650
F 0 "#PWR070" H 950 5400 50  0001 C CNN
F 1 "GND" H 955 5477 50  0000 C CNN
F 2 "" H 950 5650 50  0001 C CNN
F 3 "" H 950 5650 50  0001 C CNN
	1    950  5650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 6064AD5A
P 3000 1300
F 0 "D2" H 2993 1517 50  0000 C CNN
F 1 "LED" H 2993 1426 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3000 1300 50  0001 C CNN
F 3 "~" H 3000 1300 50  0001 C CNN
	1    3000 1300
	-1   0    0    1   
$EndComp
$Comp
L MCU_ST_STM32F7:STM32F723ZCTx U5
U 1 1 606C68EB
P 9150 5950
F 0 "U5" H 9150 6000 50  0000 C CNN
F 1 "STM32F723ZCTx" H 9150 5900 50  0000 C CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 8050 2550 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00330506.pdf" H 9150 5950 50  0001 C CNN
	1    9150 5950
	1    0    0    -1  
$EndComp
Text GLabel 10450 5850 2    50   Input ~ 0
USB_D+
Text GLabel 2700 5200 0    50   Input ~ 0
USB_D-
$Comp
L Device:C C49
U 1 1 606CC4D8
P 6450 3300
F 0 "C49" H 6565 3346 50  0000 L CNN
F 1 "2.2uF" H 6565 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6488 3150 50  0001 C CNN
F 3 "~" H 6450 3300 50  0001 C CNN
	1    6450 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR052
U 1 1 606CD1E8
P 6450 3450
F 0 "#PWR052" H 6450 3200 50  0001 C CNN
F 1 "GND" H 6455 3277 50  0000 C CNN
F 2 "" H 6450 3450 50  0001 C CNN
F 3 "" H 6450 3450 50  0001 C CNN
	1    6450 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 606CD524
P 7700 3800
F 0 "R11" H 7770 3846 50  0000 L CNN
F 1 "3k 1%" H 7770 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7630 3800 50  0001 C CNN
F 3 "~" H 7700 3800 50  0001 C CNN
	1    7700 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR061
U 1 1 606CE00E
P 7700 3950
F 0 "#PWR061" H 7700 3700 50  0001 C CNN
F 1 "GND" H 7705 3777 50  0000 C CNN
F 2 "" H 7700 3950 50  0001 C CNN
F 3 "" H 7700 3950 50  0001 C CNN
	1    7700 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C33
U 1 1 606E01A9
P 6600 1000
F 0 "C33" H 6715 1046 50  0000 L CNN
F 1 "100nF" H 6715 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6638 850 50  0001 C CNN
F 3 "~" H 6600 1000 50  0001 C CNN
	1    6600 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C34
U 1 1 606E06E2
P 7050 1000
F 0 "C34" H 7165 1046 50  0000 L CNN
F 1 "100nF" H 7165 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7088 850 50  0001 C CNN
F 3 "~" H 7050 1000 50  0001 C CNN
	1    7050 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C35
U 1 1 606E0AC5
P 7500 1000
F 0 "C35" H 7615 1046 50  0000 L CNN
F 1 "100nF" H 7615 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7538 850 50  0001 C CNN
F 3 "~" H 7500 1000 50  0001 C CNN
	1    7500 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 606E0CB8
P 7950 1000
F 0 "C36" H 8065 1046 50  0000 L CNN
F 1 "100nF" H 8065 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7988 850 50  0001 C CNN
F 3 "~" H 7950 1000 50  0001 C CNN
	1    7950 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C37
U 1 1 606E1054
P 8400 1000
F 0 "C37" H 8515 1046 50  0000 L CNN
F 1 "100nF" H 8515 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8438 850 50  0001 C CNN
F 3 "~" H 8400 1000 50  0001 C CNN
	1    8400 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C41
U 1 1 606E14BA
P 10200 1000
F 0 "C41" H 10315 1046 50  0000 L CNN
F 1 "4.7uF" H 10315 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10238 850 50  0001 C CNN
F 3 "~" H 10200 1000 50  0001 C CNN
	1    10200 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 850  8400 850 
Connection ~ 7050 850 
Wire Wire Line
	7050 850  6600 850 
Connection ~ 7500 850 
Wire Wire Line
	7500 850  7050 850 
Connection ~ 7950 850 
Wire Wire Line
	7950 850  7500 850 
Connection ~ 8400 850 
Wire Wire Line
	8400 850  7950 850 
Wire Wire Line
	8850 1150 8400 1150
Connection ~ 7050 1150
Wire Wire Line
	7050 1150 6600 1150
Connection ~ 7500 1150
Wire Wire Line
	7500 1150 7050 1150
Connection ~ 7950 1150
Wire Wire Line
	7950 1150 7500 1150
Connection ~ 8400 1150
Wire Wire Line
	8400 1150 7950 1150
$Comp
L Device:C C44
U 1 1 606E5827
P 2500 1450
F 0 "C44" H 2615 1496 50  0000 L CNN
F 1 "10uF" H 2615 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 1300 50  0001 C CNN
F 3 "~" H 2500 1450 50  0001 C CNN
	1    2500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 606E8391
P 2050 1700
F 0 "#PWR043" H 2050 1450 50  0001 C CNN
F 1 "GND" H 2055 1527 50  0000 C CNN
F 2 "" H 2050 1700 50  0001 C CNN
F 3 "" H 2050 1700 50  0001 C CNN
	1    2050 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C43
U 1 1 606E866B
P 1550 1450
F 0 "C43" H 1665 1496 50  0000 L CNN
F 1 "10uF" H 1665 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 1300 50  0001 C CNN
F 3 "~" H 1550 1450 50  0001 C CNN
	1    1550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1300 1700 1300
Wire Wire Line
	1550 1300 1400 1300
Connection ~ 1550 1300
Wire Wire Line
	2050 1600 2050 1650
Wire Wire Line
	1550 1600 1550 1650
Wire Wire Line
	1550 1650 2050 1650
Connection ~ 2050 1650
Wire Wire Line
	2050 1650 2050 1700
Wire Wire Line
	2500 1600 2500 1650
Wire Wire Line
	2500 1650 2050 1650
Connection ~ 2500 1300
Wire Wire Line
	1900 900  1700 900 
Connection ~ 1700 1300
Wire Wire Line
	1700 1300 1750 1300
Wire Wire Line
	2200 900  2400 900 
Wire Wire Line
	2350 1300 2400 1300
Wire Wire Line
	1700 900  1700 1300
Wire Wire Line
	2400 900  2400 1300
Connection ~ 2400 1300
Wire Wire Line
	2400 1300 2500 1300
$Comp
L Device:C C38
U 1 1 6070A182
P 8850 1000
F 0 "C38" H 8965 1046 50  0000 L CNN
F 1 "100nF" H 8965 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8888 850 50  0001 C CNN
F 3 "~" H 8850 1000 50  0001 C CNN
	1    8850 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C39
U 1 1 6070A51C
P 9300 1000
F 0 "C39" H 9415 1046 50  0000 L CNN
F 1 "100nF" H 9415 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9338 850 50  0001 C CNN
F 3 "~" H 9300 1000 50  0001 C CNN
	1    9300 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 850  9300 850 
Connection ~ 8850 850 
Connection ~ 9300 850 
Wire Wire Line
	9300 850  8850 850 
Wire Wire Line
	8850 1150 9300 1150
Connection ~ 8850 1150
Connection ~ 9300 1150
Wire Wire Line
	9300 1150 9750 1150
$Comp
L Device:C C40
U 1 1 6071644E
P 9750 1000
F 0 "C40" H 9865 1046 50  0000 L CNN
F 1 "100nF" H 9865 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9788 850 50  0001 C CNN
F 3 "~" H 9750 1000 50  0001 C CNN
	1    9750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 850  9750 850 
Connection ~ 9750 850 
Wire Wire Line
	9750 1150 10200 1150
Connection ~ 9750 1150
$Comp
L Device:C C51
U 1 1 60723230
P 7300 3600
F 0 "C51" H 7415 3646 50  0000 L CNN
F 1 "2.2uF" H 7415 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7338 3450 50  0001 C CNN
F 3 "~" H 7300 3600 50  0001 C CNN
	1    7300 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C50
U 1 1 60723AE4
P 6900 3400
F 0 "C50" H 7015 3446 50  0000 L CNN
F 1 "2.2uF" H 7015 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6938 3250 50  0001 C CNN
F 3 "~" H 6900 3400 50  0001 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR060
U 1 1 60731182
P 7300 3750
F 0 "#PWR060" H 7300 3500 50  0001 C CNN
F 1 "GND" H 7305 3577 50  0000 C CNN
F 2 "" H 7300 3750 50  0001 C CNN
F 3 "" H 7300 3750 50  0001 C CNN
	1    7300 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR054
U 1 1 607315B2
P 6900 3550
F 0 "#PWR054" H 6900 3300 50  0001 C CNN
F 1 "GND" H 6905 3377 50  0000 C CNN
F 2 "" H 6900 3550 50  0001 C CNN
F 3 "" H 6900 3550 50  0001 C CNN
	1    6900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3650 7850 3650
$Comp
L Device:C C42
U 1 1 6074F4D2
P 10650 1000
F 0 "C42" H 10765 1046 50  0000 L CNN
F 1 "1uF" H 10765 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10688 850 50  0001 C CNN
F 3 "~" H 10650 1000 50  0001 C CNN
	1    10650 1000
	1    0    0    -1  
$EndComp
Connection ~ 10200 850 
Wire Wire Line
	10650 850  10200 850 
Connection ~ 10200 1150
Wire Wire Line
	10650 1150 10200 1150
Wire Notes Line
	10550 800  10550 1200
Text Notes 750  1900 0    50   ~ 0
Regulador 3,3v
Wire Wire Line
	2700 1200 2700 1300
Wire Wire Line
	2700 1300 2500 1300
$Comp
L power:+3.3V #PWR039
U 1 1 6077FC85
P 2700 1200
F 0 "#PWR039" H 2700 1050 50  0001 C CNN
F 1 "+3.3V" H 2715 1373 50  0000 C CNN
F 2 "" H 2700 1200 50  0001 C CNN
F 3 "" H 2700 1200 50  0001 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3450 7300 3350
Wire Wire Line
	7300 3350 7850 3350
Wire Wire Line
	6900 3250 7850 3250
Wire Wire Line
	6450 3150 7850 3150
$Comp
L power:+3.3V #PWR045
U 1 1 607801DE
P 8550 2250
F 0 "#PWR045" H 8550 2100 50  0001 C CNN
F 1 "+3.3V" H 8565 2423 50  0000 C CNN
F 2 "" H 8550 2250 50  0001 C CNN
F 3 "" H 8550 2250 50  0001 C CNN
	1    8550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2250 8650 2250
Wire Wire Line
	8650 2350 8650 2250
Connection ~ 8650 2250
Wire Wire Line
	8650 2250 8750 2250
Wire Wire Line
	8750 2250 8750 2350
Connection ~ 8750 2250
Wire Wire Line
	8750 2250 8850 2250
Wire Wire Line
	8850 2350 8850 2250
Connection ~ 8850 2250
Wire Wire Line
	8850 2250 8950 2250
Wire Wire Line
	8950 2250 8950 2350
Connection ~ 8950 2250
Wire Wire Line
	8950 2250 9050 2250
Wire Wire Line
	9050 2350 9050 2250
Connection ~ 9050 2250
Wire Wire Line
	9050 2250 9150 2250
Wire Wire Line
	9150 2250 9150 2350
Connection ~ 9150 2250
Wire Wire Line
	9150 2250 9250 2250
Wire Wire Line
	9250 2350 9250 2250
Connection ~ 9250 2250
Wire Wire Line
	9250 2250 9350 2250
Wire Wire Line
	9350 2250 9350 2350
Connection ~ 9350 2250
Wire Wire Line
	9350 2250 9450 2250
Wire Wire Line
	9450 2350 9450 2250
Connection ~ 9450 2250
Wire Wire Line
	9450 2250 9550 2250
Wire Wire Line
	9550 2250 9550 2350
Connection ~ 9550 2250
Wire Wire Line
	9550 2250 9650 2250
Wire Wire Line
	9650 2350 9650 2250
Connection ~ 9650 2250
Wire Wire Line
	9850 2350 9850 2250
Connection ~ 9850 2250
Wire Wire Line
	9850 2250 9950 2250
Wire Wire Line
	9950 2250 9950 2350
$Comp
L power:GND #PWR078
U 1 1 607F36E6
P 8850 9650
F 0 "#PWR078" H 8850 9400 50  0001 C CNN
F 1 "GND" H 8855 9477 50  0000 C CNN
F 2 "" H 8850 9650 50  0001 C CNN
F 3 "" H 8850 9650 50  0001 C CNN
	1    8850 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 9650 8850 9600
Wire Wire Line
	8850 9600 8950 9600
Wire Wire Line
	9750 9600 9750 9550
Connection ~ 8850 9600
Wire Wire Line
	8850 9600 8850 9550
Wire Wire Line
	9650 9550 9650 9600
Connection ~ 9650 9600
Wire Wire Line
	9650 9600 9750 9600
Wire Wire Line
	9550 9600 9550 9550
Connection ~ 9550 9600
Wire Wire Line
	9550 9600 9650 9600
Wire Wire Line
	9450 9550 9450 9600
Connection ~ 9450 9600
Wire Wire Line
	9450 9600 9550 9600
Wire Wire Line
	9350 9600 9350 9550
Connection ~ 9350 9600
Wire Wire Line
	9350 9600 9450 9600
Wire Wire Line
	9250 9550 9250 9600
Connection ~ 9250 9600
Wire Wire Line
	9250 9600 9350 9600
Wire Wire Line
	9150 9600 9150 9550
Connection ~ 9150 9600
Wire Wire Line
	9150 9600 9250 9600
Wire Wire Line
	9050 9550 9050 9600
Connection ~ 9050 9600
Wire Wire Line
	9050 9600 9150 9600
Wire Wire Line
	8950 9600 8950 9550
Connection ~ 8950 9600
Wire Wire Line
	8950 9600 9050 9600
Text GLabel 7850 2650 0    50   Input ~ 0
NRST
Text GLabel 7850 2950 0    50   Input ~ 0
BOOT0
Text GLabel 7850 2750 0    50   Input ~ 0
PDR_ON
$Comp
L Device:R R14
U 1 1 6085D525
P 4750 5700
F 0 "R14" H 4820 5746 50  0000 L CNN
F 1 "10k" H 4820 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4680 5700 50  0001 C CNN
F 3 "~" H 4750 5700 50  0001 C CNN
	1    4750 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR069
U 1 1 6085DBFF
P 4750 5550
F 0 "#PWR069" H 4750 5400 50  0001 C CNN
F 1 "+3.3V" H 4765 5723 50  0000 C CNN
F 2 "" H 4750 5550 50  0001 C CNN
F 3 "" H 4750 5550 50  0001 C CNN
	1    4750 5550
	1    0    0    -1  
$EndComp
Text GLabel 4750 5850 3    50   Input ~ 0
PDR_ON
$Comp
L Device:R R15
U 1 1 6085E2D9
P 5500 5750
F 0 "R15" H 5300 5800 50  0000 L CNN
F 1 "10k" H 5300 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5430 5750 50  0001 C CNN
F 3 "~" H 5500 5750 50  0001 C CNN
	1    5500 5750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR068
U 1 1 6085E577
P 5750 5500
F 0 "#PWR068" H 5750 5350 50  0001 C CNN
F 1 "+3.3V" H 5765 5673 50  0000 C CNN
F 2 "" H 5750 5500 50  0001 C CNN
F 3 "" H 5750 5500 50  0001 C CNN
	1    5750 5500
	1    0    0    -1  
$EndComp
Text GLabel 5500 5900 3    50   Input ~ 0
BOOT0
$Comp
L power:GND #PWR072
U 1 1 60866CE1
P 5750 5700
F 0 "#PWR072" H 5750 5450 50  0001 C CNN
F 1 "GND" H 5755 5527 50  0000 C CNN
F 2 "" H 5750 5700 50  0001 C CNN
F 3 "" H 5750 5700 50  0001 C CNN
	1    5750 5700
	1    0    0    -1  
$EndComp
Text GLabel 10450 3950 2    50   Input ~ 0
SWDIO
Text GLabel 10450 4050 2    50   Input ~ 0
SWCLK
Text GLabel 10450 4650 2    50   Input ~ 0
SWO
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 60715923
P 1200 3800
F 0 "J2" H 1250 4217 50  0000 C CNN
F 1 "ARM SWD" H 1250 4126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical_SMD" H 1200 3800 50  0001 C CNN
F 3 "~" H 1200 3800 50  0001 C CNN
	1    1200 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR055
U 1 1 60716B32
P 1000 3600
F 0 "#PWR055" H 1000 3450 50  0001 C CNN
F 1 "+3.3V" H 1015 3773 50  0000 C CNN
F 2 "" H 1000 3600 50  0001 C CNN
F 3 "" H 1000 3600 50  0001 C CNN
	1    1000 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR063
U 1 1 6071723A
P 900 4100
F 0 "#PWR063" H 900 3850 50  0001 C CNN
F 1 "GND" H 905 3927 50  0000 C CNN
F 2 "" H 900 4100 50  0001 C CNN
F 3 "" H 900 4100 50  0001 C CNN
	1    900  4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4100 900  4000
Wire Wire Line
	900  3700 1000 3700
Wire Wire Line
	1000 3800 900  3800
Connection ~ 900  3800
Wire Wire Line
	900  3800 900  3700
Wire Wire Line
	1000 4000 900  4000
Connection ~ 900  4000
Wire Wire Line
	900  4000 900  3800
NoConn ~ 1000 3900
NoConn ~ 1500 3900
Text GLabel 1500 3600 2    50   Input ~ 0
SWDIO
Text GLabel 1500 3700 2    50   Input ~ 0
SWCLK
Text GLabel 1500 3800 2    50   Input ~ 0
SWO
Text GLabel 1500 4000 2    50   Input ~ 0
NRST
Wire Wire Line
	2850 1300 2700 1300
Connection ~ 2700 1300
Wire Wire Line
	3250 1300 3150 1300
Wire Wire Line
	3250 1600 3250 1650
Wire Wire Line
	3250 1650 2500 1650
Connection ~ 2500 1650
$Comp
L Device:R R10
U 1 1 607562AF
P 3250 1450
F 0 "R10" H 3320 1496 50  0000 L CNN
F 1 "2.2k" H 3320 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3180 1450 50  0001 C CNN
F 3 "~" H 3250 1450 50  0001 C CNN
	1    3250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR046
U 1 1 6072D40D
P 850 2450
F 0 "#PWR046" H 850 2300 50  0001 C CNN
F 1 "+3.3V" H 865 2623 50  0000 C CNN
F 2 "" H 850 2450 50  0001 C CNN
F 3 "" H 850 2450 50  0001 C CNN
	1    850  2450
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 6072DE01
P 1550 2500
F 0 "FB2" V 1313 2500 50  0000 C CNN
F 1 "600 @ 100MHz" V 1404 2500 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" V 1480 2500 50  0001 C CNN
F 3 "~" H 1550 2500 50  0001 C CNN
	1    1550 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	850  2450 850  2500
$Comp
L Device:C C47
U 1 1 60734E06
P 1150 2650
F 0 "C47" H 900 2700 50  0000 L CNN
F 1 "100nF" H 800 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1188 2500 50  0001 C CNN
F 3 "~" H 1150 2650 50  0001 C CNN
	1    1150 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C48
U 1 1 6073B96D
P 1950 2650
F 0 "C48" H 2065 2696 50  0000 L CNN
F 1 "10nF" H 2065 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1988 2500 50  0001 C CNN
F 3 "~" H 1950 2650 50  0001 C CNN
	1    1950 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR050
U 1 1 60742614
P 1150 2800
F 0 "#PWR050" H 1150 2550 50  0001 C CNN
F 1 "GND" H 1155 2627 50  0000 C CNN
F 2 "" H 1150 2800 50  0001 C CNN
F 3 "" H 1150 2800 50  0001 C CNN
	1    1150 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR047
U 1 1 60749B0B
P 2100 2450
F 0 "#PWR047" H 2100 2300 50  0001 C CNN
F 1 "+3.3VA" H 2115 2623 50  0000 C CNN
F 2 "" H 2100 2450 50  0001 C CNN
F 3 "" H 2100 2450 50  0001 C CNN
	1    2100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2500 2100 2500
Wire Wire Line
	2100 2500 2100 2450
Wire Wire Line
	1650 2500 1950 2500
Connection ~ 1950 2500
Wire Wire Line
	850  2500 1150 2500
Connection ~ 1150 2500
Wire Wire Line
	1150 2500 1450 2500
$Comp
L power:GND #PWR051
U 1 1 607757A8
P 1950 2800
F 0 "#PWR051" H 1950 2550 50  0001 C CNN
F 1 "GND" H 1955 2627 50  0000 C CNN
F 2 "" H 1950 2800 50  0001 C CNN
F 3 "" H 1950 2800 50  0001 C CNN
	1    1950 2800
	1    0    0    -1  
$EndComp
Wire Notes Line
	700  2200 700  3200
Wire Notes Line
	700  3200 2300 3200
Wire Notes Line
	2300 3200 2300 2200
Wire Notes Line
	2300 2200 700  2200
Text Notes 750  3150 0    50   ~ 0
Filtro VDD -> VAA
Wire Notes Line
	700  3300 700  4500
Wire Notes Line
	700  4500 1850 4500
Wire Notes Line
	1850 4500 1850 3300
Wire Notes Line
	1850 3300 700  3300
Text Notes 750  4450 0    50   ~ 0
Debug
Wire Notes Line
	700  4600 700  6050
Text Notes 750  6000 0    50   ~ 0
USB
Text GLabel 10450 3150 2    50   Input ~ 0
SPI1_SCK
Text GLabel 10450 3250 2    50   Input ~ 0
SPI1_MISO
Text GLabel 10450 3350 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 10450 2950 2    50   Input ~ 0
SPI1_CS0
Text GLabel 10450 6550 2    50   Input ~ 0
SPI1_CS1
Text GLabel 7850 7250 0    50   Input ~ 0
D0
Text GLabel 7850 7350 0    50   Input ~ 0
D1
Text GLabel 7850 7450 0    50   Input ~ 0
D2
Text GLabel 7850 4550 0    50   Input ~ 0
A_B
Text GLabel 7850 7550 0    50   Input ~ 0
D3
Text GLabel 7850 4650 0    50   Input ~ 0
D4
Text GLabel 7850 8450 0    50   Input ~ 0
D5
Text GLabel 7850 8550 0    50   Input ~ 0
D6
Text GLabel 7850 8650 0    50   Input ~ 0
D7
Text GLabel 7850 7150 0    50   Input ~ 0
PD1_adc
Text GLabel 10450 4550 2    50   Input ~ 0
PD0_adc
Text GLabel 7850 7950 0    50   Input ~ 0
SPI4_SCK
Text GLabel 7850 8150 0    50   Input ~ 0
SPI4_CS
Text GLabel 7850 8250 0    50   Input ~ 0
SPI4_MISO
Text GLabel 7850 8350 0    50   Input ~ 0
SPI4_MOSI
Text GLabel 10450 4950 2    50   Input ~ 0
I2C1_SCL
Text GLabel 10450 5050 2    50   Input ~ 0
I2C1_SDA
Text GLabel 10450 5450 2    50   Input ~ 0
Filtro
Text GLabel 10450 5350 2    50   Input ~ 0
Filt_Bypass
Text GLabel 7850 9150 0    50   Input ~ 0
Rx_Amp
Text GLabel 7850 9050 0    50   Input ~ 0
Rx_Amp_Bypass
Text GLabel 7850 9250 0    50   Input ~ 0
Rx_Amp_Pwr
Text GLabel 7850 8950 0    50   Input ~ 0
Rx_Mix
Text GLabel 7850 8850 0    50   Input ~ 0
Rx_Mix_Bypass
$Comp
L Device:C C52
U 1 1 6073CF3E
P 5600 4250
F 0 "C52" V 5750 4250 50  0000 C CNN
F 1 "100nF" V 5850 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5638 4100 50  0001 C CNN
F 3 "~" H 5600 4250 50  0001 C CNN
	1    5600 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4250 5900 4250
Wire Wire Line
	5450 4250 5300 4250
Text GLabel 5200 3900 0    50   Input ~ 0
NRST
Wire Wire Line
	5200 3900 5300 3900
$Comp
L power:GND #PWR062
U 1 1 607545DD
P 6050 4000
F 0 "#PWR062" H 6050 3750 50  0001 C CNN
F 1 "GND" H 6055 3827 50  0000 C CNN
F 2 "" H 6050 4000 50  0001 C CNN
F 3 "" H 6050 4000 50  0001 C CNN
	1    6050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4000 6050 3900
Wire Wire Line
	6050 3900 5900 3900
Wire Wire Line
	5300 3900 5300 4100
Wire Wire Line
	5900 3900 5900 4100
$Comp
L Switch:SW_Push_Dual SW1
U 1 1 6076D631
P 5600 3900
F 0 "SW1" H 5600 4185 50  0000 C CNN
F 1 "Reset" H 5600 4094 50  0000 C CNN
F 2 "SamacSys_Parts:PTS526SM15SMTR2LFS" H 5600 4100 50  0001 C CNN
F 3 "~" H 5600 4100 50  0001 C CNN
	1    5600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3900 5300 3900
Connection ~ 5300 3900
Wire Wire Line
	5400 4100 5300 4100
Connection ~ 5300 4100
Wire Wire Line
	5300 4100 5300 4250
Wire Wire Line
	5800 4100 5900 4100
Connection ~ 5900 4100
Wire Wire Line
	5900 4100 5900 4250
Wire Wire Line
	5800 3900 5900 3900
Connection ~ 5900 3900
Text GLabel 10450 4450 2    50   Input ~ 0
Trx_Enable
Text GLabel 10450 4350 2    50   Input ~ 0
Trx_Rx_Enable
Text GLabel 10450 6250 2    50   Input ~ 0
RSSI
Text GLabel 7850 7750 0    50   Input ~ 0
PE0
Text GLabel 10450 8450 2    50   Input ~ 0
PD7
Text GLabel 7850 5250 0    50   Input ~ 0
PG9
Text GLabel 7850 5350 0    50   Input ~ 0
PG10
Text GLabel 7850 5450 0    50   Input ~ 0
PG11
Text GLabel 7850 5550 0    50   Input ~ 0
PG12
Text GLabel 7850 5750 0    50   Input ~ 0
PG14
Text GLabel 7850 5650 0    50   Input ~ 0
PG13
$Comp
L Device:C C45
U 1 1 6075782D
P 2800 2600
F 0 "C45" H 2915 2646 50  0000 L CNN
F 1 "100nF" H 2915 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2838 2450 50  0001 C CNN
F 3 "~" H 2800 2600 50  0001 C CNN
	1    2800 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C46
U 1 1 60757D60
P 3250 2600
F 0 "C46" H 3365 2646 50  0000 L CNN
F 1 "1uF" H 3365 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3288 2450 50  0001 C CNN
F 3 "~" H 3250 2600 50  0001 C CNN
	1    3250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2250 9850 2250
$Comp
L power:+3.3VA #PWR048
U 1 1 60758D40
P 2500 2450
F 0 "#PWR048" H 2500 2300 50  0001 C CNN
F 1 "+3.3VA" H 2515 2623 50  0000 C CNN
F 2 "" H 2500 2450 50  0001 C CNN
F 3 "" H 2500 2450 50  0001 C CNN
	1    2500 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR044
U 1 1 607593C5
P 9750 2150
F 0 "#PWR044" H 9750 2000 50  0001 C CNN
F 1 "+3.3VA" H 9765 2323 50  0000 C CNN
F 2 "" H 9750 2150 50  0001 C CNN
F 3 "" H 9750 2150 50  0001 C CNN
	1    9750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2150 9750 2350
$Comp
L power:+3.3VA #PWR053
U 1 1 607621F1
P 7850 3450
F 0 "#PWR053" H 7850 3300 50  0001 C CNN
F 1 "+3.3VA" V 7865 3577 50  0000 L CNN
F 2 "" H 7850 3450 50  0001 C CNN
F 3 "" H 7850 3450 50  0001 C CNN
	1    7850 3450
	0    -1   -1   0   
$EndComp
Wire Notes Line
	10550 800  10950 800 
Wire Notes Line
	10950 800  10950 1200
Wire Notes Line
	10950 1200 10550 1200
Text Notes 10550 800  0    50   ~ 0
VDDUSB
Wire Wire Line
	2500 2450 2800 2450
Connection ~ 2800 2450
Wire Wire Line
	2800 2450 3250 2450
$Comp
L power:GND #PWR049
U 1 1 607750E2
P 2500 2750
F 0 "#PWR049" H 2500 2500 50  0001 C CNN
F 1 "GND" H 2505 2577 50  0000 C CNN
F 2 "" H 2500 2750 50  0001 C CNN
F 3 "" H 2500 2750 50  0001 C CNN
	1    2500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2750 2800 2750
Connection ~ 2800 2750
Wire Wire Line
	2800 2750 3250 2750
Text GLabel 13100 4500 3    50   Input ~ 0
I2C1_SCL
Text GLabel 13450 4500 3    50   Input ~ 0
I2C1_SDA
$Comp
L Device:R R12
U 1 1 607B96F0
P 13100 4350
F 0 "R12" H 13170 4396 50  0000 L CNN
F 1 "4.7k" H 13170 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 13030 4350 50  0001 C CNN
F 3 "~" H 13100 4350 50  0001 C CNN
	1    13100 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR064
U 1 1 607BA1AE
P 13100 4200
F 0 "#PWR064" H 13100 4050 50  0001 C CNN
F 1 "+3.3VA" H 13115 4373 50  0000 C CNN
F 2 "" H 13100 4200 50  0001 C CNN
F 3 "" H 13100 4200 50  0001 C CNN
	1    13100 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 607BAC08
P 13450 4350
F 0 "R13" H 13520 4396 50  0000 L CNN
F 1 "4.7k" H 13520 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 13380 4350 50  0001 C CNN
F 3 "~" H 13450 4350 50  0001 C CNN
	1    13450 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR065
U 1 1 607BAEFB
P 13450 4200
F 0 "#PWR065" H 13450 4050 50  0001 C CNN
F 1 "+3.3VA" H 13465 4373 50  0000 C CNN
F 2 "" H 13450 4200 50  0001 C CNN
F 3 "" H 13450 4200 50  0001 C CNN
	1    13450 4200
	1    0    0    -1  
$EndComp
Text GLabel 3600 8100 0    50   Input ~ 0
VDDA_CLK
Wire Wire Line
	3650 8200 3650 8100
Wire Wire Line
	3650 8100 3600 8100
Wire Wire Line
	3650 7950 3750 7950
Wire Wire Line
	3750 7950 3750 8200
Wire Wire Line
	3750 7950 3850 7950
Wire Wire Line
	3850 7950 3850 8200
Connection ~ 3750 7950
Wire Wire Line
	3850 7950 3950 7950
Wire Wire Line
	3950 7950 3950 8200
Connection ~ 3850 7950
Wire Wire Line
	4050 8200 4050 7950
Wire Wire Line
	4050 7950 3950 7950
Connection ~ 3950 7950
Wire Wire Line
	4150 8200 4150 7950
Wire Wire Line
	4150 7950 4050 7950
Connection ~ 4050 7950
Wire Wire Line
	4250 8200 4250 7950
Wire Wire Line
	4250 7950 4150 7950
Connection ~ 4150 7950
$Comp
L power:GND #PWR083
U 1 1 6083C7B3
P 3950 10500
F 0 "#PWR083" H 3950 10250 50  0001 C CNN
F 1 "GND" H 3955 10327 50  0000 C CNN
F 2 "" H 3950 10500 50  0001 C CNN
F 3 "" H 3950 10500 50  0001 C CNN
	1    3950 10500
	1    0    0    -1  
$EndComp
Text GLabel 3450 9700 0    50   Input ~ 0
I2C1_SCL
Text GLabel 3450 9600 0    50   Input ~ 0
I2C1_SDA
$Comp
L Device:R R21
U 1 1 6085EDA3
P 5000 10100
F 0 "R21" V 5100 10100 50  0000 C CNN
F 1 "33" V 4884 10100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4930 10100 50  0001 C CNN
F 3 "~" H 5000 10100 50  0001 C CNN
	1    5000 10100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 60870620
P 4700 9800
F 0 "R20" V 4800 9800 50  0000 C CNN
F 1 "33" V 4584 9800 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4630 9800 50  0001 C CNN
F 3 "~" H 4700 9800 50  0001 C CNN
	1    4700 9800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 608709AC
P 4700 9500
F 0 "R18" V 4800 9500 50  0000 C CNN
F 1 "33" V 4584 9500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4630 9500 50  0001 C CNN
F 3 "~" H 4700 9500 50  0001 C CNN
	1    4700 9500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 60870E10
P 4700 9200
F 0 "R17" V 4800 9200 50  0000 C CNN
F 1 "33" V 4584 9200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4630 9200 50  0001 C CNN
F 3 "~" H 4700 9200 50  0001 C CNN
	1    4700 9200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R16
U 1 1 6087111B
P 4700 8900
F 0 "R16" V 4800 8900 50  0000 C CNN
F 1 "33" V 4584 8900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4630 8900 50  0001 C CNN
F 3 "~" H 4700 8900 50  0001 C CNN
	1    4700 8900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 8900 4550 8900
Wire Wire Line
	4550 9200 4450 9200
Wire Wire Line
	4450 9500 4550 9500
Wire Wire Line
	4450 9800 4550 9800
Wire Wire Line
	4450 10100 4550 10100
Text GLabel 5050 8900 2    50   Input ~ 0
MCU_CLK
Text GLabel 5050 9500 2    50   Input ~ 0
Trx_CLK
Text GLabel 5050 9800 2    50   Input ~ 0
MIX_CLK
Wire Wire Line
	5050 8900 4950 8900
Wire Wire Line
	4850 9200 4950 9200
Wire Wire Line
	4850 9500 4950 9500
Wire Wire Line
	5050 9800 4950 9800
Wire Wire Line
	5150 10100 5250 10100
Connection ~ 5250 10100
Wire Wire Line
	5250 10100 5350 10100
NoConn ~ 4450 9000
NoConn ~ 4450 9300
NoConn ~ 4450 9600
NoConn ~ 4450 9900
NoConn ~ 3450 9100
NoConn ~ 3450 9200
NoConn ~ 3450 9400
Text GLabel 7850 4250 0    50   Input ~ 0
MCU_CLK
NoConn ~ 7850 4350
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J5
U 1 1 607A5B40
P 13150 5750
F 0 "J5" H 13200 6067 50  0000 C CNN
F 1 "PG" H 13200 5976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 13150 5750 50  0001 C CNN
F 3 "~" H 13150 5750 50  0001 C CNN
	1    13150 5750
	1    0    0    -1  
$EndComp
Text GLabel 7850 5850 0    50   Input ~ 0
PG15
Text GLabel 7850 4750 0    50   Input ~ 0
PG2
Text GLabel 7850 4850 0    50   Input ~ 0
PG3
Text GLabel 7850 4950 0    50   Input ~ 0
PG4
Text GLabel 7850 5050 0    50   Input ~ 0
PG5
Text GLabel 7850 5150 0    50   Input ~ 0
PG8
Text GLabel 12950 5650 0    50   Input ~ 0
PG2
Text GLabel 12950 5750 0    50   Input ~ 0
PG3
Text GLabel 12950 5850 0    50   Input ~ 0
PG4
Text GLabel 13450 5650 2    50   Input ~ 0
PG5
Text GLabel 13450 5750 2    50   Input ~ 0
PG8
Text GLabel 13450 5850 2    50   Input ~ 0
PG15
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J7
U 1 1 607AB1B5
P 13150 6350
F 0 "J7" H 13200 6667 50  0000 C CNN
F 1 "PF" H 13200 6576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 13150 6350 50  0001 C CNN
F 3 "~" H 13150 6350 50  0001 C CNN
	1    13150 6350
	1    0    0    -1  
$EndComp
Text GLabel 7850 6650 0    50   Input ~ 0
PF6
Text GLabel 7850 6750 0    50   Input ~ 0
PF7
Text GLabel 7850 6850 0    50   Input ~ 0
PF8
Text GLabel 7850 6950 0    50   Input ~ 0
PF9
Text GLabel 7850 7050 0    50   Input ~ 0
PF10
Text GLabel 12950 6250 0    50   Input ~ 0
PF6
Text GLabel 12950 6350 0    50   Input ~ 0
PF7
Text GLabel 12950 6450 0    50   Input ~ 0
PF8
Text GLabel 13450 6250 2    50   Input ~ 0
PF9
Text GLabel 13450 6350 2    50   Input ~ 0
PF10
NoConn ~ 13450 6450
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom J9
U 1 1 607BEC48
P 13150 6950
F 0 "J9" H 13200 7267 50  0000 C CNN
F 1 "PE" H 13200 7176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical_SMD" H 13150 6950 50  0001 C CNN
F 3 "~" H 13150 6950 50  0001 C CNN
	1    13150 6950
	1    0    0    -1  
$EndComp
Text GLabel 7850 7850 0    50   Input ~ 0
PE1
Text GLabel 7850 8050 0    50   Input ~ 0
PE3
Text GLabel 7850 8750 0    50   Input ~ 0
RESETX
Text GLabel 10450 7350 2    50   Input ~ 0
PC13
Text GLabel 7850 6050 0    50   Input ~ 0
PF0
Text GLabel 7850 6250 0    50   Input ~ 0
PF2
Text GLabel 7850 6350 0    50   Input ~ 0
PF3
Text GLabel 7850 6150 0    50   Input ~ 0
PF1
Text GLabel 12950 6850 0    50   Input ~ 0
PE1
Text GLabel 12950 6950 0    50   Input ~ 0
PE3
Text GLabel 12950 7050 0    50   Input ~ 0
PE10
Text GLabel 12950 7150 0    50   Input ~ 0
PE11
Text GLabel 13450 6850 2    50   Input ~ 0
PE12
Text GLabel 13450 6950 2    50   Input ~ 0
PE13
Text GLabel 13450 7050 2    50   Input ~ 0
PE14
Text GLabel 13450 7150 2    50   Input ~ 0
PE15
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J11
U 1 1 607C572F
P 13150 7850
F 0 "J11" H 13200 8367 50  0000 C CNN
F 1 "PD" H 13200 8276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical_SMD" H 13150 7850 50  0001 C CNN
F 3 "~" H 13150 7850 50  0001 C CNN
	1    13150 7850
	1    0    0    -1  
$EndComp
Text GLabel 10450 7750 2    50   Input ~ 0
PD0
Text GLabel 12950 7550 0    50   Input ~ 0
PD0
Text GLabel 10450 7850 2    50   Input ~ 0
PD1
Text GLabel 10450 7950 2    50   Input ~ 0
PD2
Text GLabel 10450 8050 2    50   Input ~ 0
PD3
Text GLabel 10450 8150 2    50   Input ~ 0
PD4
Text GLabel 10450 8250 2    50   Input ~ 0
PD5
Text GLabel 10450 8350 2    50   Input ~ 0
PD6
Text GLabel 10450 8550 2    50   Input ~ 0
PD8
Text GLabel 10450 8650 2    50   Input ~ 0
PD9
Text GLabel 10450 8750 2    50   Input ~ 0
PD10
Text GLabel 10450 8850 2    50   Input ~ 0
PD11
Text GLabel 10450 8950 2    50   Input ~ 0
PD12
Text GLabel 10450 9050 2    50   Input ~ 0
PD13
Text GLabel 10450 9150 2    50   Input ~ 0
PD14
Text GLabel 10450 9250 2    50   Input ~ 0
PD15
Text GLabel 12950 7650 0    50   Input ~ 0
PD1
Text GLabel 12950 7750 0    50   Input ~ 0
PD2
Text GLabel 12950 7850 0    50   Input ~ 0
PD3
Text GLabel 12950 7950 0    50   Input ~ 0
PD4
Text GLabel 12950 8050 0    50   Input ~ 0
PD5
Text GLabel 12950 8150 0    50   Input ~ 0
PD6
Text GLabel 12950 8250 0    50   Input ~ 0
PD8
Text GLabel 13450 7550 2    50   Input ~ 0
PD9
Text GLabel 13450 7650 2    50   Input ~ 0
PD10
Text GLabel 13450 7750 2    50   Input ~ 0
PD11
Text GLabel 13450 7850 2    50   Input ~ 0
PD12
Text GLabel 13450 7950 2    50   Input ~ 0
PD13
Text GLabel 13450 8050 2    50   Input ~ 0
PD14
Text GLabel 13450 8150 2    50   Input ~ 0
PD15
NoConn ~ 13450 8250
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J6
U 1 1 607E0A2C
P 14550 5850
F 0 "J6" H 14600 6267 50  0000 C CNN
F 1 "PC" H 14600 6176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical_SMD" H 14550 5850 50  0001 C CNN
F 3 "~" H 14550 5850 50  0001 C CNN
	1    14550 5850
	1    0    0    -1  
$EndComp
Text GLabel 10450 6050 2    50   Input ~ 0
PC0
Text GLabel 10450 6150 2    50   Input ~ 0
PC1
Text GLabel 10450 6350 2    50   Input ~ 0
PC3
Text GLabel 10450 6650 2    50   Input ~ 0
PC6
Text GLabel 10450 6750 2    50   Input ~ 0
PC7
Text GLabel 10450 6850 2    50   Input ~ 0
PC8
Text GLabel 10450 6950 2    50   Input ~ 0
PC9
Text GLabel 10450 7050 2    50   Input ~ 0
PC10
Text GLabel 10450 7150 2    50   Input ~ 0
PC11
Text GLabel 10450 7250 2    50   Input ~ 0
PC12
Text GLabel 10450 7450 2    50   Input ~ 0
PC14
Text GLabel 10450 7550 2    50   Input ~ 0
PC15
Text GLabel 14850 6150 2    50   Input ~ 0
PC15
Text GLabel 14850 6050 2    50   Input ~ 0
PC14
Text GLabel 14850 5950 2    50   Input ~ 0
PC12
Text GLabel 14850 5850 2    50   Input ~ 0
PC11
Text GLabel 14850 5750 2    50   Input ~ 0
PC10
Text GLabel 14850 5650 2    50   Input ~ 0
PC9
Text GLabel 14350 6150 0    50   Input ~ 0
PC8
Text GLabel 14350 6050 0    50   Input ~ 0
PC7
Text GLabel 14350 5950 0    50   Input ~ 0
PC6
Text GLabel 14350 5850 0    50   Input ~ 0
PC3
Text GLabel 14350 5750 0    50   Input ~ 0
PC1
Text GLabel 14350 5650 0    50   Input ~ 0
PC0
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom J8
U 1 1 607EAFAE
P 14550 6700
F 0 "J8" H 14600 7017 50  0000 C CNN
F 1 "PB" H 14600 6926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical_SMD" H 14550 6700 50  0001 C CNN
F 3 "~" H 14550 6700 50  0001 C CNN
	1    14550 6700
	1    0    0    -1  
$EndComp
Text GLabel 10450 4750 2    50   Input ~ 0
PB4
Text GLabel 10450 4850 2    50   Input ~ 0
PB5
Text GLabel 10450 5150 2    50   Input ~ 0
PB8
Text GLabel 10450 5250 2    50   Input ~ 0
PB9
Text GLabel 7850 6450 0    50   Input ~ 0
PF4
Text GLabel 7850 6550 0    50   Input ~ 0
PF5
Text GLabel 10450 5550 2    50   Input ~ 0
PB12
Text GLabel 10450 5650 2    50   Input ~ 0
PB13
Text GLabel 14850 6900 2    50   Input ~ 0
PB13
Text GLabel 14850 6800 2    50   Input ~ 0
PB12
Text GLabel 14850 6700 2    50   Input ~ 0
PB11
Text GLabel 14850 6600 2    50   Input ~ 0
PB10
Text GLabel 14350 6900 0    50   Input ~ 0
PB9
Text GLabel 14350 6800 0    50   Input ~ 0
PB8
Text GLabel 14350 6700 0    50   Input ~ 0
PB5
Text GLabel 14350 6600 0    50   Input ~ 0
PB4
$Comp
L Connector_Generic:Conn_02x06_Top_Bottom J10
U 1 1 607F1A92
P 14550 7550
F 0 "J10" H 14600 7967 50  0000 C CNN
F 1 "PA" H 14600 7876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical_SMD" H 14550 7550 50  0001 C CNN
F 3 "~" H 14550 7550 50  0001 C CNN
	1    14550 7550
	1    0    0    -1  
$EndComp
Text GLabel 10450 4150 2    50   Input ~ 0
PA15
Text GLabel 10450 3850 2    50   Input ~ 0
PA12
Text GLabel 10450 3750 2    50   Input ~ 0
PA11
Text GLabel 10450 3650 2    50   Input ~ 0
PA10
Text GLabel 10450 3550 2    50   Input ~ 0
PA9
Text GLabel 10450 3450 2    50   Input ~ 0
PA8
Text GLabel 10450 3050 2    50   Input ~ 0
PA4
Text GLabel 10450 6450 2    50   Input ~ 0
PC4
Text GLabel 10450 2850 2    50   Input ~ 0
PA2
Text GLabel 10450 2750 2    50   Input ~ 0
PA1
Text GLabel 10450 2650 2    50   Input ~ 0
PA0
Text GLabel 14850 7750 2    50   Input ~ 0
PA15
Text GLabel 14850 7650 2    50   Input ~ 0
PA12
Text GLabel 14850 7550 2    50   Input ~ 0
PA11
Text GLabel 14850 7450 2    50   Input ~ 0
PA10
Text GLabel 14850 7350 2    50   Input ~ 0
PA9
Text GLabel 14350 7850 0    50   Input ~ 0
PA8
Text GLabel 14350 7750 0    50   Input ~ 0
PA4
Text GLabel 14350 7550 0    50   Input ~ 0
PA2
Text GLabel 14350 7450 0    50   Input ~ 0
PA1
Text GLabel 14350 7350 0    50   Input ~ 0
PA0
NoConn ~ 14850 7850
$Comp
L Device:Ferrite_Bead FB1
U 1 1 6083777E
P 1250 1300
F 0 "FB1" V 976 1300 50  0000 C CNN
F 1 "600 @ 100MHz" V 1067 1300 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" V 1180 1300 50  0001 C CNN
F 3 "~" H 1250 1300 50  0001 C CNN
	1    1250 1300
	0    1    1    0   
$EndComp
Wire Notes Line
	700  1950 3500 1950
Connection ~ 6600 1150
Connection ~ 6600 850 
$Comp
L power:+3.3V #PWR035
U 1 1 6077FDB1
P 4050 850
F 0 "#PWR035" H 4050 700 50  0001 C CNN
F 1 "+3.3V" H 4065 1023 50  0000 C CNN
F 2 "" H 4050 850 50  0001 C CNN
F 3 "" H 4050 850 50  0001 C CNN
	1    4050 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C28
U 1 1 606DE88F
P 4350 1000
F 0 "C28" H 4465 1046 50  0000 L CNN
F 1 "100nF" H 4465 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4388 850 50  0001 C CNN
F 3 "~" H 4350 1000 50  0001 C CNN
	1    4350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 850  4350 850 
Wire Wire Line
	4800 1150 4350 1150
$Comp
L power:GND #PWR038
U 1 1 606E44DC
P 4050 1150
F 0 "#PWR038" H 4050 900 50  0001 C CNN
F 1 "GND" H 4055 977 50  0000 C CNN
F 2 "" H 4050 1150 50  0001 C CNN
F 3 "" H 4050 1150 50  0001 C CNN
	1    4050 1150
	1    0    0    -1  
$EndComp
Connection ~ 4350 1150
Wire Wire Line
	4050 850  4350 850 
Connection ~ 4350 850 
Wire Wire Line
	4050 1150 4350 1150
Connection ~ 4800 850 
Connection ~ 4800 1150
Wire Wire Line
	6600 1150 6150 1150
Wire Wire Line
	6150 1150 5700 1150
Connection ~ 6150 1150
Wire Wire Line
	5700 1150 5250 1150
Connection ~ 5700 1150
Wire Wire Line
	5250 1150 4800 1150
Connection ~ 5250 1150
Wire Wire Line
	6600 850  6150 850 
Wire Wire Line
	6150 850  5700 850 
Connection ~ 6150 850 
Wire Wire Line
	5700 850  5250 850 
Connection ~ 5700 850 
Wire Wire Line
	5250 850  4800 850 
Connection ~ 5250 850 
$Comp
L Device:C C32
U 1 1 606DFD8D
P 6150 1000
F 0 "C32" H 6265 1046 50  0000 L CNN
F 1 "100nF" H 6265 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6188 850 50  0001 C CNN
F 3 "~" H 6150 1000 50  0001 C CNN
	1    6150 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C31
U 1 1 606DF916
P 5700 1000
F 0 "C31" H 5815 1046 50  0000 L CNN
F 1 "100nF" H 5815 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5738 850 50  0001 C CNN
F 3 "~" H 5700 1000 50  0001 C CNN
	1    5700 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C30
U 1 1 606DF434
P 5250 1000
F 0 "C30" H 5365 1046 50  0000 L CNN
F 1 "100nF" H 5365 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5288 850 50  0001 C CNN
F 3 "~" H 5250 1000 50  0001 C CNN
	1    5250 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 606DF0D0
P 4800 1000
F 0 "C29" H 4915 1046 50  0000 L CNN
F 1 "100nF" H 4915 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4838 850 50  0001 C CNN
F 3 "~" H 4800 1000 50  0001 C CNN
	1    4800 1000
	1    0    0    -1  
$EndComp
Wire Notes Line
	700  600  3500 600 
Wire Notes Line
	3500 600  3500 1950
Wire Notes Line
	700  600  700  1950
$Comp
L Connector_Generic:Conn_01x04 J12
U 1 1 608E9CE9
P 6650 7950
F 0 "J12" H 6730 7942 50  0000 L CNN
F 1 "SPI4" H 6730 7851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 6650 7950 50  0001 C CNN
F 3 "~" H 6650 7950 50  0001 C CNN
	1    6650 7950
	1    0    0    -1  
$EndComp
Text GLabel 6450 7850 0    50   Input ~ 0
SPI4_SCK
Text GLabel 6450 7950 0    50   Input ~ 0
SPI4_MOSI
Text GLabel 6450 8050 0    50   Input ~ 0
SPI4_MISO
Text GLabel 6450 8150 0    50   Input ~ 0
SPI4_CS
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 6079AF87
P 13300 3400
F 0 "J1" H 13380 3392 50  0000 L CNN
F 1 "I2C1" H 13380 3301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical_SMD" H 13300 3400 50  0001 C CNN
F 3 "~" H 13300 3400 50  0001 C CNN
	1    13300 3400
	1    0    0    -1  
$EndComp
Text GLabel 13100 3400 0    50   Input ~ 0
I2C1_SCL
Text GLabel 13100 3500 0    50   Input ~ 0
I2C1_SDA
$Comp
L Connector:TestPoint TP19
U 1 1 6079BAE2
P 2750 3650
F 0 "TP19" H 2650 3850 50  0000 L CNN
F 1 "TestPoint" H 2808 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2950 3650 50  0001 C CNN
F 3 "~" H 2950 3650 50  0001 C CNN
	1    2750 3650
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP18
U 1 1 6079D16C
P 2500 3650
F 0 "TP18" H 2400 3850 50  0000 L CNN
F 1 "TestPoint" H 2558 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2700 3650 50  0001 C CNN
F 3 "~" H 2700 3650 50  0001 C CNN
	1    2500 3650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR058
U 1 1 6079EC4B
P 2750 3650
F 0 "#PWR058" H 2750 3500 50  0001 C CNN
F 1 "+3.3V" H 2765 3823 50  0000 C CNN
F 2 "" H 2750 3650 50  0001 C CNN
F 3 "" H 2750 3650 50  0001 C CNN
	1    2750 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP20
U 1 1 6079F420
P 3000 3700
F 0 "TP20" H 2900 3900 50  0000 L CNN
F 1 "TestPoint" H 3058 3727 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.5x1.5mm" H 3200 3700 50  0001 C CNN
F 3 "~" H 3200 3700 50  0001 C CNN
	1    3000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR059
U 1 1 6079F6DA
P 3000 3700
F 0 "#PWR059" H 3000 3450 50  0001 C CNN
F 1 "GND" H 3005 3527 50  0000 C CNN
F 2 "" H 3000 3700 50  0001 C CNN
F 3 "" H 3000 3700 50  0001 C CNN
	1    3000 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 607BFB0B
P 2250 3650
F 0 "TP17" H 2150 3850 50  0000 L CNN
F 1 "TestPoint" H 2308 3677 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 2450 3650 50  0001 C CNN
F 3 "~" H 2450 3650 50  0001 C CNN
	1    2250 3650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3VA #PWR056
U 1 1 607CF205
P 2250 3650
F 0 "#PWR056" H 2250 3500 50  0001 C CNN
F 1 "+3.3VA" H 2265 3823 50  0000 C CNN
F 2 "" H 2250 3650 50  0001 C CNN
F 3 "" H 2250 3650 50  0001 C CNN
	1    2250 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP27
U 1 1 607CF8A2
P 4950 8900
F 0 "TP27" H 4900 9100 50  0000 L CNN
F 1 "TestPoint" H 5008 8927 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5150 8900 50  0001 C CNN
F 3 "~" H 5150 8900 50  0001 C CNN
	1    4950 8900
	1    0    0    -1  
$EndComp
Connection ~ 4950 8900
Wire Wire Line
	4950 8900 4850 8900
$Comp
L Connector:TestPoint TP28
U 1 1 607D02FA
P 4950 9200
F 0 "TP28" H 4900 9400 50  0000 L CNN
F 1 "TestPoint" H 5008 9227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5150 9200 50  0001 C CNN
F 3 "~" H 5150 9200 50  0001 C CNN
	1    4950 9200
	1    0    0    -1  
$EndComp
Connection ~ 4950 9200
Wire Wire Line
	4950 9200 5050 9200
$Comp
L Connector:TestPoint TP29
U 1 1 607D05B3
P 4950 9500
F 0 "TP29" H 4900 9700 50  0000 L CNN
F 1 "TestPoint" H 5008 9527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5150 9500 50  0001 C CNN
F 3 "~" H 5150 9500 50  0001 C CNN
	1    4950 9500
	1    0    0    -1  
$EndComp
Connection ~ 4950 9500
Wire Wire Line
	4950 9500 5050 9500
$Comp
L Connector:TestPoint TP30
U 1 1 607D0AC7
P 4950 9800
F 0 "TP30" H 4900 10000 50  0000 L CNN
F 1 "TestPoint" H 5008 9827 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5150 9800 50  0001 C CNN
F 3 "~" H 5150 9800 50  0001 C CNN
	1    4950 9800
	1    0    0    -1  
$EndComp
Connection ~ 4950 9800
Wire Wire Line
	4950 9800 4850 9800
$Comp
L Connector:TestPoint TP31
U 1 1 607D0EB7
P 5250 10100
F 0 "TP31" H 5200 10300 50  0000 L CNN
F 1 "TestPoint" H 5308 10127 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5450 10100 50  0001 C CNN
F 3 "~" H 5450 10100 50  0001 C CNN
	1    5250 10100
	1    0    0    -1  
$EndComp
Text GLabel 6000 7200 3    50   Input ~ 0
SPI4_SCK
Text GLabel 6200 7200 3    50   Input ~ 0
SPI4_MOSI
Text GLabel 6400 7200 3    50   Input ~ 0
SPI4_MISO
Text GLabel 6600 7200 3    50   Input ~ 0
SPI4_CS
$Comp
L Connector:TestPoint TP23
U 1 1 608112CF
P 6000 7200
F 0 "TP23" H 5950 7400 50  0000 L CNN
F 1 "TestPoint" H 6058 7227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6200 7200 50  0001 C CNN
F 3 "~" H 6200 7200 50  0001 C CNN
	1    6000 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP24
U 1 1 60811688
P 6200 7200
F 0 "TP24" H 6150 7400 50  0000 L CNN
F 1 "TestPoint" H 6258 7227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6400 7200 50  0001 C CNN
F 3 "~" H 6400 7200 50  0001 C CNN
	1    6200 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP25
U 1 1 6081184D
P 6400 7200
F 0 "TP25" H 6350 7400 50  0000 L CNN
F 1 "TestPoint" H 6458 7227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6600 7200 50  0001 C CNN
F 3 "~" H 6600 7200 50  0001 C CNN
	1    6400 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP26
U 1 1 60811A9E
P 6600 7200
F 0 "TP26" H 6550 7400 50  0000 L CNN
F 1 "TestPoint" H 6658 7227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6800 7200 50  0001 C CNN
F 3 "~" H 6800 7200 50  0001 C CNN
	1    6600 7200
	1    0    0    -1  
$EndComp
Text GLabel 13850 4500 3    50   Input ~ 0
I2C1_SCL
Text GLabel 14050 4500 3    50   Input ~ 0
I2C1_SDA
$Comp
L Connector:TestPoint TP22
U 1 1 60822FAD
P 14050 4500
F 0 "TP22" H 14000 4700 50  0000 L CNN
F 1 "TestPoint" H 14108 4527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 14250 4500 50  0001 C CNN
F 3 "~" H 14250 4500 50  0001 C CNN
	1    14050 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP21
U 1 1 60823555
P 13850 4500
F 0 "TP21" H 13800 4700 50  0000 L CNN
F 1 "TestPoint" H 13908 4527 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 14050 4500 50  0001 C CNN
F 3 "~" H 14050 4500 50  0001 C CNN
	1    13850 4500
	1    0    0    -1  
$EndComp
Text GLabel 12200 3250 3    50   Input ~ 0
SPI1_SCK
Text GLabel 11800 3250 3    50   Input ~ 0
SPI1_MISO
Text GLabel 12000 3250 3    50   Input ~ 0
SPI1_MOSI
Text GLabel 11600 3250 3    50   Input ~ 0
SPI1_CS0
Text GLabel 11400 3250 3    50   Input ~ 0
SPI1_CS1
$Comp
L Connector:TestPoint TP12
U 1 1 608551D7
P 11400 3250
F 0 "TP12" H 11350 3450 50  0000 L CNN
F 1 "TestPoint" H 11458 3277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 11600 3250 50  0001 C CNN
F 3 "~" H 11600 3250 50  0001 C CNN
	1    11400 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 60855529
P 11600 3250
F 0 "TP13" H 11550 3450 50  0000 L CNN
F 1 "TestPoint" H 11658 3277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 11800 3250 50  0001 C CNN
F 3 "~" H 11800 3250 50  0001 C CNN
	1    11600 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP14
U 1 1 608558A4
P 11800 3250
F 0 "TP14" H 11750 3450 50  0000 L CNN
F 1 "TestPoint" H 11858 3277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 12000 3250 50  0001 C CNN
F 3 "~" H 12000 3250 50  0001 C CNN
	1    11800 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP15
U 1 1 60855B5E
P 12000 3250
F 0 "TP15" H 11950 3450 50  0000 L CNN
F 1 "TestPoint" H 12058 3277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 12200 3250 50  0001 C CNN
F 3 "~" H 12200 3250 50  0001 C CNN
	1    12000 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 60855E26
P 12200 3250
F 0 "TP16" H 12150 3450 50  0000 L CNN
F 1 "TestPoint" H 12258 3277 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 12400 3250 50  0001 C CNN
F 3 "~" H 12400 3250 50  0001 C CNN
	1    12200 3250
	1    0    0    -1  
$EndComp
Text GLabel 6850 10200 3    50   Input ~ 0
Rx_Amp_Bypass
Text GLabel 6650 10200 3    50   Input ~ 0
RXHP
$Comp
L Connector:TestPoint TP32
U 1 1 60856786
P 6650 10200
F 0 "TP32" H 6600 10400 50  0000 L CNN
F 1 "TestPoint" H 6708 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6850 10200 50  0001 C CNN
F 3 "~" H 6850 10200 50  0001 C CNN
	1    6650 10200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP33
U 1 1 60856E05
P 6850 10200
F 0 "TP33" H 6800 10400 50  0000 L CNN
F 1 "TestPoint" H 6908 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7050 10200 50  0001 C CNN
F 3 "~" H 7050 10200 50  0001 C CNN
	1    6850 10200
	1    0    0    -1  
$EndComp
Text GLabel 7050 10200 3    50   Input ~ 0
Rx_Mix
Text GLabel 7250 10200 3    50   Input ~ 0
Rx_Amp_Pwr
Text GLabel 7450 10200 3    50   Input ~ 0
Rx_Amp
Text GLabel 7650 10200 3    50   Input ~ 0
Filt_Bypass
Text GLabel 7850 10200 3    50   Input ~ 0
Filtro
Text GLabel 8050 10200 3    50   Input ~ 0
Rx_Mix_Bypass
Text GLabel 8450 10200 3    50   Input ~ 0
Trx_Enable
Text GLabel 8250 10200 3    50   Input ~ 0
Trx_Rx_Enable
$Comp
L Connector:TestPoint TP34
U 1 1 60866968
P 7050 10200
F 0 "TP34" H 7000 10400 50  0000 L CNN
F 1 "TestPoint" H 7108 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7250 10200 50  0001 C CNN
F 3 "~" H 7250 10200 50  0001 C CNN
	1    7050 10200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP35
U 1 1 60866CC8
P 7250 10200
F 0 "TP35" H 7200 10400 50  0000 L CNN
F 1 "TestPoint" H 7308 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7450 10200 50  0001 C CNN
F 3 "~" H 7450 10200 50  0001 C CNN
	1    7250 10200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP36
U 1 1 60866E2E
P 7450 10200
F 0 "TP36" H 7400 10400 50  0000 L CNN
F 1 "TestPoint" H 7508 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7650 10200 50  0001 C CNN
F 3 "~" H 7650 10200 50  0001 C CNN
	1    7450 10200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP37
U 1 1 60866FEB
P 7650 10200
F 0 "TP37" H 7600 10400 50  0000 L CNN
F 1 "TestPoint" H 7708 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7850 10200 50  0001 C CNN
F 3 "~" H 7850 10200 50  0001 C CNN
	1    7650 10200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP38
U 1 1 60867236
P 7850 10200
F 0 "TP38" H 7800 10400 50  0000 L CNN
F 1 "TestPoint" H 7908 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8050 10200 50  0001 C CNN
F 3 "~" H 8050 10200 50  0001 C CNN
	1    7850 10200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP39
U 1 1 6086755E
P 8050 10200
F 0 "TP39" H 8000 10400 50  0000 L CNN
F 1 "TestPoint" H 8108 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8250 10200 50  0001 C CNN
F 3 "~" H 8250 10200 50  0001 C CNN
	1    8050 10200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP40
U 1 1 6086775D
P 8250 10200
F 0 "TP40" H 8200 10400 50  0000 L CNN
F 1 "TestPoint" H 8308 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8450 10200 50  0001 C CNN
F 3 "~" H 8450 10200 50  0001 C CNN
	1    8250 10200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP41
U 1 1 60867A1B
P 8450 10200
F 0 "TP41" H 8400 10400 50  0000 L CNN
F 1 "TestPoint" H 8508 10227 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 8650 10200 50  0001 C CNN
F 3 "~" H 8650 10200 50  0001 C CNN
	1    8450 10200
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 60A50F8D
P 1450 9500
F 0 "Y1" H 1350 9850 50  0000 L CNN
F 1 "25MHz" H 1350 9750 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_EuroQuartz_MT-4Pin_3.2x2.5mm" H 1450 9500 50  0001 C CNN
F 3 "~" H 1450 9500 50  0001 C CNN
	1    1450 9500
	1    0    0    -1  
$EndComp
Text GLabel 950  9500 0    50   Input ~ 0
XOUT
Text GLabel 1900 9500 2    50   Input ~ 0
XIN
$Comp
L Device:C C62
U 1 1 60A53EA2
P 1050 9650
F 0 "C62" H 1165 9696 50  0000 L CNN
F 1 "DNP" H 1165 9605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1088 9500 50  0001 C CNN
F 3 "~" H 1050 9650 50  0001 C CNN
	1    1050 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C63
U 1 1 60A548B3
P 1800 9650
F 0 "C63" H 1915 9696 50  0000 L CNN
F 1 "DNP" H 1915 9605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1838 9500 50  0001 C CNN
F 3 "~" H 1800 9650 50  0001 C CNN
	1    1800 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 9300 1650 9300
Wire Wire Line
	1650 9300 1650 9700
Wire Wire Line
	1650 9700 1450 9700
Wire Wire Line
	950  9500 1050 9500
Connection ~ 1050 9500
Wire Wire Line
	1050 9500 1300 9500
Wire Wire Line
	1600 9500 1800 9500
Connection ~ 1800 9500
Wire Wire Line
	1800 9500 1900 9500
$Comp
L power:GND #PWR080
U 1 1 60A88677
P 1050 9800
F 0 "#PWR080" H 1050 9550 50  0001 C CNN
F 1 "GND" H 1055 9627 50  0000 C CNN
F 2 "" H 1050 9800 50  0001 C CNN
F 3 "" H 1050 9800 50  0001 C CNN
	1    1050 9800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR079
U 1 1 60A888D1
P 1450 9700
F 0 "#PWR079" H 1450 9450 50  0001 C CNN
F 1 "GND" H 1455 9527 50  0000 C CNN
F 2 "" H 1450 9700 50  0001 C CNN
F 3 "" H 1450 9700 50  0001 C CNN
	1    1450 9700
	1    0    0    -1  
$EndComp
Connection ~ 1450 9700
$Comp
L power:GND #PWR081
U 1 1 60A88D2E
P 1800 9800
F 0 "#PWR081" H 1800 9550 50  0001 C CNN
F 1 "GND" H 1805 9627 50  0000 C CNN
F 2 "" H 1800 9800 50  0001 C CNN
F 3 "" H 1800 9800 50  0001 C CNN
	1    1800 9800
	1    0    0    -1  
$EndComp
Text GLabel 3450 8700 0    50   Input ~ 0
XOUT
Text GLabel 3450 8900 0    50   Input ~ 0
XIN
$Comp
L Oscillator:5P49V6965 U6
U 1 1 607574A6
P 3950 9400
F 0 "U6" H 4150 8300 50  0000 C CNN
F 1 "5P49V5929" H 4300 8200 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.8x2.8mm" H 3900 8300 50  0001 C CNN
F 3 "https://www.idt.com/document/dst/5p49v6965-datasheet" H 3500 10550 50  0001 C CNN
	1    3950 9400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 608BC82F
P 2450 9550
F 0 "R19" H 2250 9600 50  0000 L CNN
F 1 "10k" H 2250 9500 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2380 9550 50  0001 C CNN
F 3 "~" H 2450 9550 50  0001 C CNN
	1    2450 9550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR076
U 1 1 608BC835
P 2650 9300
F 0 "#PWR076" H 2650 9150 50  0001 C CNN
F 1 "+3.3V" H 2665 9473 50  0000 C CNN
F 2 "" H 2650 9300 50  0001 C CNN
F 3 "" H 2650 9300 50  0001 C CNN
	1    2650 9300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR077
U 1 1 608BC843
P 2650 9500
F 0 "#PWR077" H 2650 9250 50  0001 C CNN
F 1 "GND" H 2655 9327 50  0000 C CNN
F 2 "" H 2650 9500 50  0001 C CNN
F 3 "" H 2650 9500 50  0001 C CNN
	1    2650 9500
	1    0    0    -1  
$EndComp
Text GLabel 3450 9900 0    50   Input ~ 0
SD_OE
Text GLabel 2450 9700 3    50   Input ~ 0
SD_OE
$Comp
L Power_Protection:USBLC6-2SC6 U4
U 1 1 6099D14D
P 3100 5300
F 0 "U4" H 3350 5650 50  0000 C CNN
F 1 "USBLC6-2SC6" H 3400 4950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3100 4800 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 3300 5650 50  0001 C CNN
	1    3100 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR040
U 1 1 6099F804
P 800 1300
F 0 "#PWR040" H 800 1150 50  0001 C CNN
F 1 "+5V" H 815 1473 50  0000 C CNN
F 2 "" H 800 1300 50  0001 C CNN
F 3 "" H 800 1300 50  0001 C CNN
	1    800  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1300 1100 1300
Wire Wire Line
	1250 4950 1350 4950
Wire Wire Line
	950  5550 950  5650
$Comp
L power:+5V #PWR067
U 1 1 609B1B99
P 1350 4950
F 0 "#PWR067" H 1350 4800 50  0001 C CNN
F 1 "+5V" H 1365 5123 50  0000 C CNN
F 2 "" H 1350 4950 50  0001 C CNN
F 3 "" H 1350 4950 50  0001 C CNN
	1    1350 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR066
U 1 1 609B411B
P 3100 4900
F 0 "#PWR066" H 3100 4750 50  0001 C CNN
F 1 "+5V" H 3115 5073 50  0000 C CNN
F 2 "" H 3100 4900 50  0001 C CNN
F 3 "" H 3100 4900 50  0001 C CNN
	1    3100 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR071
U 1 1 609B4FE4
P 3100 5700
F 0 "#PWR071" H 3100 5450 50  0001 C CNN
F 1 "GND" H 3105 5527 50  0000 C CNN
F 2 "" H 3100 5700 50  0001 C CNN
F 3 "" H 3100 5700 50  0001 C CNN
	1    3100 5700
	1    0    0    -1  
$EndComp
NoConn ~ 850  5550
NoConn ~ 1250 5350
Text GLabel 3500 5200 2    50   Input ~ 0
USB_D+
Text GLabel 10450 5750 2    50   Input ~ 0
USB_D-
Text GLabel 2700 5400 0    50   Input ~ 0
USB_CONN_D-
Text GLabel 1250 5250 2    50   Input ~ 0
USB_CONN_D-
Text GLabel 1250 5150 2    50   Input ~ 0
USB_CONN_D+
Text GLabel 3500 5400 2    50   Input ~ 0
USB_CONN_D+
Wire Notes Line
	4150 4600 4150 6050
Wire Notes Line
	700  6050 4150 6050
Wire Notes Line
	700  4600 4150 4600
$Comp
L power:+5V #PWR057
U 1 1 60A19FAC
P 2500 3650
F 0 "#PWR057" H 2500 3500 50  0001 C CNN
F 1 "+5V" H 2515 3823 50  0000 C CNN
F 2 "" H 2500 3650 50  0001 C CNN
F 3 "" H 2500 3650 50  0001 C CNN
	1    2500 3650
	1    0    0    -1  
$EndComp
$Comp
L Diode:SM4007 D1
U 1 1 60A9B7DD
P 2050 900
F 0 "D1" H 2050 1117 50  0000 C CNN
F 1 "SM4007" H 2050 1026 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 2050 725 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/A400/SMD1N400%23DIO.pdf" H 2050 900 50  0001 C CNN
	1    2050 900 
	1    0    0    -1  
$EndComp
Text GLabel 14350 7650 0    50   Input ~ 0
PC4
Text GLabel 3650 7950 0    50   Input ~ 0
VDD_CLK
Connection ~ 2000 8250
Wire Wire Line
	1600 8250 2000 8250
Wire Wire Line
	1600 8550 2000 8550
$Comp
L Device:C C61
U 1 1 607C2794
P 2000 8400
F 0 "C61" H 2115 8446 50  0000 L CNN
F 1 "100nF" H 2115 8355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2038 8250 50  0001 C CNN
F 3 "~" H 2000 8400 50  0001 C CNN
	1    2000 8400
	1    0    0    -1  
$EndComp
Connection ~ 1600 8550
$Comp
L power:GND #PWR075
U 1 1 607CEDC1
P 1600 8550
F 0 "#PWR075" H 1600 8300 50  0001 C CNN
F 1 "GND" H 1605 8377 50  0000 C CNN
F 2 "" H 1600 8550 50  0001 C CNN
F 3 "" H 1600 8550 50  0001 C CNN
	1    1600 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 8250 2350 8250
Connection ~ 1600 8250
Wire Wire Line
	1500 8250 1600 8250
$Comp
L Device:C C60
U 1 1 607C23DE
P 1600 8400
F 0 "C60" H 1715 8446 50  0000 L CNN
F 1 "1uF" H 1715 8355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1638 8250 50  0001 C CNN
F 3 "~" H 1600 8400 50  0001 C CNN
	1    1600 8400
	1    0    0    -1  
$EndComp
Text GLabel 1500 8250 0    50   Input ~ 0
VDD_CLK
Text GLabel 2350 8250 2    50   Input ~ 0
VDDA_CLK
Connection ~ 4150 7400
Wire Wire Line
	4500 7400 4150 7400
Text GLabel 4500 7400 2    50   Input ~ 0
VDD_CLK
Wire Wire Line
	3700 7700 4150 7700
Connection ~ 3700 7700
Wire Wire Line
	3250 7700 3700 7700
Connection ~ 3250 7700
Wire Wire Line
	2800 7700 3250 7700
Connection ~ 2800 7700
Wire Wire Line
	2350 7700 2800 7700
Connection ~ 2350 7700
Wire Wire Line
	1900 7700 2350 7700
Connection ~ 1900 7700
Wire Wire Line
	1500 7700 1900 7700
Connection ~ 1500 7700
Wire Wire Line
	800  7700 1500 7700
$Comp
L power:GND #PWR074
U 1 1 6079D43B
P 800 7700
F 0 "#PWR074" H 800 7450 50  0001 C CNN
F 1 "GND" H 805 7527 50  0000 C CNN
F 2 "" H 800 7700 50  0001 C CNN
F 3 "" H 800 7700 50  0001 C CNN
	1    800  7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7400 3250 7400
Connection ~ 3700 7400
Wire Wire Line
	3250 7400 2800 7400
Connection ~ 3250 7400
Wire Wire Line
	2800 7400 2350 7400
Connection ~ 2800 7400
Wire Wire Line
	2350 7400 1900 7400
Connection ~ 2350 7400
Wire Wire Line
	1900 7400 1500 7400
Connection ~ 1900 7400
Wire Wire Line
	1500 7400 1400 7400
Connection ~ 1500 7400
Wire Wire Line
	4150 7400 3700 7400
$Comp
L Device:C C59
U 1 1 607932B0
P 4150 7550
F 0 "C59" H 4265 7596 50  0000 L CNN
F 1 "100nF" H 4265 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4188 7400 50  0001 C CNN
F 3 "~" H 4150 7550 50  0001 C CNN
	1    4150 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C58
U 1 1 60792EDC
P 3700 7550
F 0 "C58" H 3815 7596 50  0000 L CNN
F 1 "100nF" H 3815 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3738 7400 50  0001 C CNN
F 3 "~" H 3700 7550 50  0001 C CNN
	1    3700 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C57
U 1 1 607929B5
P 3250 7550
F 0 "C57" H 3365 7596 50  0000 L CNN
F 1 "100nF" H 3365 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3288 7400 50  0001 C CNN
F 3 "~" H 3250 7550 50  0001 C CNN
	1    3250 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C56
U 1 1 60792451
P 2800 7550
F 0 "C56" H 2915 7596 50  0000 L CNN
F 1 "100nF" H 2915 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2838 7400 50  0001 C CNN
F 3 "~" H 2800 7550 50  0001 C CNN
	1    2800 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C55
U 1 1 60791DD3
P 2350 7550
F 0 "C55" H 2465 7596 50  0000 L CNN
F 1 "100nF" H 2465 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2388 7400 50  0001 C CNN
F 3 "~" H 2350 7550 50  0001 C CNN
	1    2350 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C54
U 1 1 60791956
P 1900 7550
F 0 "C54" H 2015 7596 50  0000 L CNN
F 1 "100nF" H 2015 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1938 7400 50  0001 C CNN
F 3 "~" H 1900 7550 50  0001 C CNN
	1    1900 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7400 1100 7400
Wire Wire Line
	800  7250 800  7400
$Comp
L Device:Ferrite_Bead FB3
U 1 1 6077C994
P 1250 7400
F 0 "FB3" V 976 7400 50  0000 C CNN
F 1 "600 @ 100MHz" V 1067 7400 50  0000 C CNN
F 2 "Inductor_SMD:L_0402_1005Metric" V 1180 7400 50  0001 C CNN
F 3 "~" H 1250 7400 50  0001 C CNN
	1    1250 7400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR073
U 1 1 6077B927
P 800 7250
F 0 "#PWR073" H 800 7100 50  0001 C CNN
F 1 "+3.3V" H 815 7423 50  0000 C CNN
F 2 "" H 800 7250 50  0001 C CNN
F 3 "" H 800 7250 50  0001 C CNN
	1    800  7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C53
U 1 1 6077B67D
P 1500 7550
F 0 "C53" H 1615 7596 50  0000 L CNN
F 1 "10uF" H 1615 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1538 7400 50  0001 C CNN
F 3 "~" H 1500 7550 50  0001 C CNN
	1    1500 7550
	1    0    0    -1  
$EndComp
Text GLabel 5050 9200 2    50   Input ~ 0
CLK_ADC
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 609A6883
P 4700 10100
F 0 "JP1" H 4700 10200 50  0000 C CNN
F 1 "SolderJumper" H 4650 10000 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4700 10100 50  0001 C CNN
F 3 "~" H 4700 10100 50  0001 C CNN
	1    4700 10100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J14
U 1 1 609BFF79
P 5550 10100
F 0 "J14" H 5650 10200 50  0000 L CNN
F 1 "CLK_OUT0" H 5650 10100 50  0000 L CNN
F 2 "Tesis2020-21:RFSOLUTIONS_CON-SMA-EDGE-S" H 5550 10100 50  0001 C CNN
F 3 " ~" H 5550 10100 50  0001 C CNN
	1    5550 10100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR082
U 1 1 609C0F02
P 5550 10300
F 0 "#PWR082" H 5550 10050 50  0001 C CNN
F 1 "GND" H 5555 10127 50  0000 C CNN
F 2 "" H 5550 10300 50  0001 C CNN
F 3 "" H 5550 10300 50  0001 C CNN
	1    5550 10300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 609D3CFE
P 2050 1300
F 0 "U3" H 2050 1542 50  0000 C CNN
F 1 "AMS1117-3.3" H 2050 1451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2050 1500 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2150 1050 50  0001 C CNN
	1    2050 1300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60A3112A
P 13400 1000
F 0 "H1" H 13500 1049 50  0000 L CNN
F 1 "MountingHole_Pad" H 13500 958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 13400 1000 50  0001 C CNN
F 3 "~" H 13400 1000 50  0001 C CNN
	1    13400 1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60A32235
P 14300 1000
F 0 "H2" H 14400 1049 50  0000 L CNN
F 1 "MountingHole_Pad" H 14400 958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 14300 1000 50  0001 C CNN
F 3 "~" H 14300 1000 50  0001 C CNN
	1    14300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 60A339E2
P 13400 1100
F 0 "#PWR036" H 13400 850 50  0001 C CNN
F 1 "GND" H 13405 927 50  0000 C CNN
F 2 "" H 13400 1100 50  0001 C CNN
F 3 "" H 13400 1100 50  0001 C CNN
	1    13400 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 60A348D8
P 14300 1100
F 0 "#PWR037" H 14300 850 50  0001 C CNN
F 1 "GND" H 14305 927 50  0000 C CNN
F 2 "" H 14300 1100 50  0001 C CNN
F 3 "" H 14300 1100 50  0001 C CNN
	1    14300 1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60A34C8F
P 13400 1500
F 0 "H3" H 13500 1549 50  0000 L CNN
F 1 "MountingHole_Pad" H 13500 1458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 13400 1500 50  0001 C CNN
F 3 "~" H 13400 1500 50  0001 C CNN
	1    13400 1500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60A35011
P 14300 1500
F 0 "H4" H 14400 1549 50  0000 L CNN
F 1 "MountingHole_Pad" H 14400 1458 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 14300 1500 50  0001 C CNN
F 3 "~" H 14300 1500 50  0001 C CNN
	1    14300 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 60A353DA
P 14300 1600
F 0 "#PWR042" H 14300 1350 50  0001 C CNN
F 1 "GND" H 14305 1427 50  0000 C CNN
F 2 "" H 14300 1600 50  0001 C CNN
F 3 "" H 14300 1600 50  0001 C CNN
	1    14300 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 60A356F5
P 13400 1600
F 0 "#PWR041" H 13400 1350 50  0001 C CNN
F 1 "GND" H 13405 1427 50  0000 C CNN
F 2 "" H 13400 1600 50  0001 C CNN
F 3 "" H 13400 1600 50  0001 C CNN
	1    13400 1600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 60ABD761
P 5950 5600
F 0 "J4" H 6030 5642 50  0000 L CNN
F 1 "Boot_Select" H 6030 5551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5950 5600 50  0001 C CNN
F 3 "~" H 5950 5600 50  0001 C CNN
	1    5950 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J13
U 1 1 60ADE0C5
P 2850 9400
F 0 "J13" H 2930 9442 50  0000 L CNN
F 1 "OutEn" H 2930 9351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2850 9400 50  0001 C CNN
F 3 "~" H 2850 9400 50  0001 C CNN
	1    2850 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5600 5750 5600
Wire Wire Line
	2450 9400 2650 9400
$EndSCHEMATC
