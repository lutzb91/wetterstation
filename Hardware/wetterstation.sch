EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1150 1150 1400 1150
U 5FDBB1BC
F0 "Arduino" 50
F1 "arduino.sch" 50
F2 "Regensensor" I R 2550 1250 50 
F3 "VWindSensor" I R 2550 1400 50 
F4 "Temperatur_SDA" I R 2550 2200 50 
F5 "Temperatur_SCL" I R 2550 2100 50 
F6 "Kompass_SDA" I R 2550 1950 50 
F7 "Kompass_SCL" I R 2550 1850 50 
F8 "DWindSensor" I R 2550 1550 50 
F9 "SolarRadSensor" I R 2550 1700 50 
F10 "CHRG_STAT1" I L 1150 1250 50 
F11 "CHRG_STAT2" I L 1150 1350 50 
$EndSheet
$Comp
L Connector:6P6C J?
U 1 1 5FDCBE18
P 8300 1250
F 0 "J?" H 7970 1254 50  0000 R CNN
F 1 "6P6C" H 7970 1345 50  0000 R CNN
F 2 "" V 8300 1275 50  0001 C CNN
F 3 "~" V 8300 1275 50  0001 C CNN
	1    8300 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 1250 7900 1250
$Comp
L power:GND #PWR?
U 1 1 5FDCD78D
P 7750 1450
F 0 "#PWR?" H 7750 1200 50  0001 C CNN
F 1 "GND" H 7755 1277 50  0000 C CNN
F 2 "" H 7750 1450 50  0001 C CNN
F 3 "" H 7750 1450 50  0001 C CNN
	1    7750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1350 7750 1350
Wire Wire Line
	7750 1350 7750 1450
$EndSCHEMATC
