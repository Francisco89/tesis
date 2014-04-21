EESchema Schematic File Version 2
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
LIBS:special
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
LIBS:daq
LIBS:Adquisidora-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 11
Title ""
Date "18 apr 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AD5422 U49
U 1 1 5302CA09
P 6050 4050
F 0 "U49" H 6050 3400 60  0000 C CNN
F 1 "AD5422" H 6050 4700 60  0000 C CNN
F 2 "" H 6050 4150 60  0000 C CNN
F 3 "" H 6050 4150 60  0000 C CNN
	1    6050 4050
	1    0    0    -1  
$EndComp
NoConn ~ 6700 4100
$Comp
L R R179
U 1 1 53035034
P 5050 3700
F 0 "R179" V 5130 3700 40  0000 C CNN
F 1 "10k" V 5057 3701 40  0000 C CNN
F 2 "~" V 4980 3700 30  0000 C CNN
F 3 "~" H 5050 3700 30  0000 C CNN
	1    5050 3700
	0    -1   -1   0   
$EndComp
$Comp
L AGND #PWR0102
U 1 1 53035AD9
P 5200 4650
F 0 "#PWR0102" H 5200 4650 40  0001 C CNN
F 1 "AGND" H 5200 4580 50  0000 C CNN
F 2 "" H 5200 4650 60  0000 C CNN
F 3 "" H 5200 4650 60  0000 C CNN
	1    5200 4650
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR0103
U 1 1 530381FC
P 3900 3800
F 0 "#PWR0103" H 3900 3800 40  0001 C CNN
F 1 "AGND" H 3900 3730 50  0000 C CNN
F 2 "" H 3900 3800 60  0000 C CNN
F 3 "" H 3900 3800 60  0000 C CNN
	1    3900 3800
	1    0    0    -1  
$EndComp
NoConn ~ 6700 4600
NoConn ~ 6700 4300
NoConn ~ 6700 4000
NoConn ~ 6700 3900
$Comp
L AGND #PWR0104
U 1 1 53039072
P 7500 3750
F 0 "#PWR0104" H 7500 3750 40  0001 C CNN
F 1 "AGND" H 7500 3680 50  0000 C CNN
F 2 "" H 7500 3750 60  0000 C CNN
F 3 "" H 7500 3750 60  0000 C CNN
	1    7500 3750
	1    0    0    -1  
$EndComp
NoConn ~ 6700 4200
$Comp
L C C119
U 1 1 53039EDE
P 7150 4600
F 0 "C119" H 7150 4500 40  0000 L CNN
F 1 "0.1uF" H 7150 4700 40  0000 L CNN
F 2 "~" H 7188 4450 30  0000 C CNN
F 3 "~" H 7150 4600 60  0000 C CNN
	1    7150 4600
	-1   0    0    1   
$EndComp
$Comp
L AGND #PWR0105
U 1 1 53039EED
P 7150 4850
F 0 "#PWR0105" H 7150 4850 40  0001 C CNN
F 1 "AGND" H 7150 4780 50  0000 C CNN
F 2 "" H 7150 4850 60  0000 C CNN
F 3 "" H 7150 4850 60  0000 C CNN
	1    7150 4850
	1    0    0    -1  
$EndComp
NoConn ~ 5400 4400
$Comp
L C C116
U 1 1 5303A62F
P 6250 2800
F 0 "C116" H 6250 2900 40  0000 L CNN
F 1 "10uF" H 6256 2715 40  0000 L CNN
F 2 "~" H 6288 2650 30  0000 C CNN
F 3 "~" H 6250 2800 60  0000 C CNN
	1    6250 2800
	1    0    0    -1  
$EndComp
$Comp
L C C117
U 1 1 5303A63C
P 6550 2800
F 0 "C117" H 6550 2900 40  0000 L CNN
F 1 "0.1uF" H 6556 2715 40  0000 L CNN
F 2 "~" H 6588 2650 30  0000 C CNN
F 3 "~" H 6550 2800 60  0000 C CNN
	1    6550 2800
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR0106
U 1 1 5303AD74
P 6400 3100
F 0 "#PWR0106" H 6400 3100 40  0001 C CNN
F 1 "AGND" H 6400 3030 50  0000 C CNN
F 2 "" H 6400 3100 60  0000 C CNN
F 3 "" H 6400 3100 60  0000 C CNN
	1    6400 3100
	1    0    0    -1  
$EndComp
$Comp
L C C115
U 1 1 5303AD85
P 5850 2800
F 0 "C115" H 5850 2900 40  0000 L CNN
F 1 "0.1uF" H 5856 2715 40  0000 L CNN
F 2 "~" H 5888 2650 30  0000 C CNN
F 3 "~" H 5850 2800 60  0000 C CNN
	1    5850 2800
	-1   0    0    -1  
$EndComp
$Comp
L C C114
U 1 1 5303AD8B
P 5550 2800
F 0 "C114" H 5550 2900 40  0000 L CNN
F 1 "10uF" H 5556 2715 40  0000 L CNN
F 2 "~" H 5588 2650 30  0000 C CNN
F 3 "~" H 5550 2800 60  0000 C CNN
	1    5550 2800
	-1   0    0    -1  
$EndComp
$Comp
L AGND #PWR0107
U 1 1 5303AD94
P 5700 3100
F 0 "#PWR0107" H 5700 3100 40  0001 C CNN
F 1 "AGND" H 5700 3030 50  0000 C CNN
F 2 "" H 5700 3100 60  0000 C CNN
F 3 "" H 5700 3100 60  0000 C CNN
	1    5700 3100
	-1   0    0    -1  
$EndComp
Text Label 7150 3500 2    60   ~ 0
DAC24
Text Label 6700 2400 2    60   ~ 0
DAC24
Text Label 5500 2400 0    60   ~ 0
DAC1
NoConn ~ 5400 3600
$Comp
L C C118
U 1 1 530A6FF5
P 4500 3450
F 0 "C118" H 4500 3550 40  0000 L CNN
F 1 "0.1uF" H 4506 3365 40  0000 L CNN
F 2 "~" H 4538 3300 30  0000 C CNN
F 3 "~" H 4500 3450 60  0000 C CNN
	1    4500 3450
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR0108
U 1 1 530A72EA
P 4250 3300
F 0 "#PWR0108" H 4250 3300 40  0001 C CNN
F 1 "AGND" H 4250 3230 50  0000 C CNN
F 2 "" H 4250 3300 60  0000 C CNN
F 3 "" H 4250 3300 60  0000 C CNN
	1    4250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3700 5300 3700
Wire Wire Line
	5400 4500 5200 4500
Wire Wire Line
	5400 4300 3850 4300
Wire Wire Line
	5400 4200 3850 4200
Wire Wire Line
	5400 4100 3850 4100
Wire Wire Line
	3900 3800 5400 3800
Wire Wire Line
	5400 4600 5200 4600
Wire Wire Line
	5200 4500 5200 4650
Wire Wire Line
	6700 3800 7000 3800
Wire Wire Line
	6700 3700 6900 3700
Wire Wire Line
	6900 3700 6900 3800
Connection ~ 6900 3800
Wire Wire Line
	6700 3600 7500 3600
Wire Wire Line
	6700 4400 7150 4400
Wire Wire Line
	6250 2600 6550 2600
Wire Wire Line
	5550 2600 5850 2600
Wire Wire Line
	6700 4500 6900 4500
Wire Wire Line
	6900 4500 6900 4400
Connection ~ 6900 4400
Connection ~ 5200 4600
Wire Wire Line
	7150 4800 7150 4850
Wire Wire Line
	3850 3700 4800 3700
Wire Wire Line
	7500 3600 7500 3750
Wire Wire Line
	5550 3000 5850 3000
Wire Wire Line
	5700 3100 5700 3000
Connection ~ 5700 3000
Wire Wire Line
	6250 3000 6550 3000
Wire Wire Line
	6400 3000 6400 3100
Connection ~ 6400 3000
Wire Wire Line
	4800 2400 5700 2400
Wire Wire Line
	5700 2400 5700 2600
Connection ~ 5700 2600
Wire Wire Line
	6400 2600 6400 2400
Connection ~ 6400 2600
Wire Wire Line
	5000 3500 5400 3500
Wire Wire Line
	6700 3500 7150 3500
Wire Wire Line
	6400 2400 7200 2400
Wire Wire Line
	4950 3900 4950 3800
Connection ~ 4950 3800
Wire Wire Line
	4950 3900 5400 3900
Wire Wire Line
	4500 3250 4500 3200
Wire Wire Line
	4500 3200 4250 3200
Wire Wire Line
	4250 3200 4250 3300
Text Label 5000 3500 0    60   ~ 0
DAC1
Text HLabel 7000 3800 2    60   Input ~ 0
Vo
Wire Wire Line
	4500 3650 4500 3700
Connection ~ 4500 3700
Text GLabel 4800 2400 0    60   Input ~ 0
-15V
Text GLabel 7200 2400 2    60   Input ~ 0
+15V
Text HLabel 3850 4000 0    60   Input ~ 0
CLEAR
Wire Wire Line
	5400 4000 3850 4000
Text HLabel 3850 4100 0    60   Input ~ 0
LATCH
Text HLabel 3850 4200 0    60   Input ~ 0
SCLK
Text HLabel 3850 4300 0    60   Input ~ 0
Vi
Text GLabel 3850 3700 0    60   Input ~ 0
+3.3V
$EndSCHEMATC