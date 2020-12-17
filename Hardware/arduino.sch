EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5FDBB41C
P 4600 3100
F 0 "U1" H 4600 1511 50  0000 C CNN
F 1 "ATmega328P-AU" H 4600 1420 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 4600 3100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 4600 3100 50  0001 C CNN
	1    4600 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5FDBCDE3
P 5700 2550
F 0 "Y1" V 5654 2681 50  0000 L CNN
F 1 "8MHz" V 5745 2681 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD_HandSoldering" H 5700 2550 50  0001 C CNN
F 3 "~" H 5700 2550 50  0001 C CNN
	1    5700 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 2500 5500 2500
Wire Wire Line
	5500 2500 5500 2400
Wire Wire Line
	5500 2400 5700 2400
Wire Wire Line
	5700 2700 5500 2700
Wire Wire Line
	5500 2700 5500 2600
Wire Wire Line
	5500 2600 5200 2600
$Comp
L power:VCC #PWR0101
U 1 1 5FDBE709
P 6550 2850
F 0 "#PWR0101" H 6550 2700 50  0001 C CNN
F 1 "VCC" H 6565 3023 50  0000 C CNN
F 2 "" H 6550 2850 50  0001 C CNN
F 3 "" H 6550 2850 50  0001 C CNN
	1    6550 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FDBF4E4
P 6550 3050
F 0 "R1" V 6343 3050 50  0000 C CNN
F 1 "10k" V 6434 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 3050 50  0001 C CNN
F 3 "~" H 6550 3050 50  0001 C CNN
	1    6550 3050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FDC05EB
P 6900 3400
F 0 "SW1" H 6900 3685 50  0000 C CNN
F 1 "Reset" H 6900 3594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_EVQPE1" H 6900 3600 50  0001 C CNN
F 3 "~" H 6900 3600 50  0001 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3400 6550 3400
Wire Wire Line
	6550 3200 6550 3400
Connection ~ 6550 3400
Wire Wire Line
	6550 3400 5200 3400
$Comp
L power:GND #PWR0102
U 1 1 5FDC306E
P 7350 3600
F 0 "#PWR0102" H 7350 3350 50  0001 C CNN
F 1 "GND" H 7355 3427 50  0000 C CNN
F 2 "" H 7350 3600 50  0001 C CNN
F 3 "" H 7350 3600 50  0001 C CNN
	1    7350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2850 6550 2900
Wire Wire Line
	7100 3400 7350 3400
Wire Wire Line
	7350 3400 7350 3600
$Comp
L Device:C C1
U 1 1 5FDC3AAB
P 6000 2300
F 0 "C1" V 5748 2300 50  0000 C CNN
F 1 "22pF" V 5839 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6038 2150 50  0001 C CNN
F 3 "~" H 6000 2300 50  0001 C CNN
	1    6000 2300
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5FDC4464
P 6000 2800
F 0 "C2" V 5748 2800 50  0000 C CNN
F 1 "22pF" V 5839 2800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6038 2650 50  0001 C CNN
F 3 "~" H 6000 2800 50  0001 C CNN
	1    6000 2800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FDC562D
P 6300 2550
F 0 "#PWR0103" H 6300 2300 50  0001 C CNN
F 1 "GND" V 6305 2422 50  0000 R CNN
F 2 "" H 6300 2550 50  0001 C CNN
F 3 "" H 6300 2550 50  0001 C CNN
	1    6300 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 2300 5700 2300
Wire Wire Line
	5700 2300 5700 2400
Connection ~ 5700 2400
Wire Wire Line
	5700 2700 5700 2800
Wire Wire Line
	5700 2800 5850 2800
Connection ~ 5700 2700
Wire Wire Line
	6150 2800 6300 2800
Wire Wire Line
	6300 2800 6300 2550
Wire Wire Line
	6300 2550 6300 2300
Wire Wire Line
	6300 2300 6150 2300
Connection ~ 6300 2550
Text HLabel 5400 3800 2    50   Input ~ 0
Regensensor
Wire Wire Line
	5200 3800 5400 3800
Text HLabel 5400 3900 2    50   Input ~ 0
VWindSensor
Wire Wire Line
	5400 3900 5200 3900
Text HLabel 8650 2450 2    50   Input ~ 0
Temperatur_SDA
Text HLabel 8650 2550 2    50   Input ~ 0
Temperatur_SCL
Text HLabel 8650 2700 2    50   Input ~ 0
Kompass_SDA
Text HLabel 8650 2800 2    50   Input ~ 0
Kompass_SCL
Wire Wire Line
	5200 3200 5550 3200
Text Label 5550 3200 2    50   ~ 0
SDA
Wire Wire Line
	5200 3300 5550 3300
Text Label 5550 3300 2    50   ~ 0
SCL
Wire Wire Line
	8650 2450 8500 2450
Wire Wire Line
	8650 2550 8500 2550
Wire Wire Line
	8650 2700 8500 2700
Wire Wire Line
	8650 2800 8500 2800
Text Label 8500 2450 2    50   ~ 0
SDA
Text Label 8500 2700 2    50   ~ 0
SDA
Text Label 8500 2550 2    50   ~ 0
SCL
Text Label 8500 2800 2    50   ~ 0
SCL
Text HLabel 5400 3100 2    50   Input ~ 0
DWindSensor
Wire Wire Line
	5400 3100 5200 3100
Text HLabel 5400 3000 2    50   Input ~ 0
SolarRadSensor
Wire Wire Line
	5400 3000 5200 3000
Text HLabel 5400 4000 2    50   Input ~ 0
CHRG_STAT1
Text HLabel 5400 4100 2    50   Input ~ 0
CHRG_STAT2
Wire Wire Line
	5400 4000 5200 4000
Wire Wire Line
	5200 4100 5400 4100
Wire Wire Line
	5200 3600 5550 3600
Wire Wire Line
	5200 3700 5550 3700
Text Label 5550 3600 2    50   ~ 0
RX
Text Label 5550 3700 2    50   ~ 0
TX
Wire Wire Line
	5200 2200 5450 2200
Wire Wire Line
	5200 2300 5450 2300
Wire Wire Line
	5200 2400 5450 2400
Text Label 5450 2200 2    50   ~ 0
MOSI
Text Label 5450 2300 2    50   ~ 0
MISO
Text Label 5450 2400 2    50   ~ 0
SCK
$EndSCHEMATC
