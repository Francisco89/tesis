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
LIBS:adq 7 - ADC 1-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "27 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AD7656 U11
U 1 1 53019797
P 4550 3850
F 0 "U11" H 4550 3850 60  0000 C CNN
F 1 "AD7656" H 4550 4150 60  0000 C CNN
F 2 "~" H 4550 3850 31  0000 C CNN
F 3 "~" H 4550 3850 60  0000 C CNN
	1    4550 3850
	-1   0    0    1   
$EndComp
$Comp
L DGND #PWR43
U 1 1 530382D7
P 4450 1450
F 0 "#PWR43" H 4450 1450 40  0001 C CNN
F 1 "DGND" H 4450 1380 40  0000 C CNN
F 2 "" H 4450 1450 60  0000 C CNN
F 3 "" H 4450 1450 60  0000 C CNN
	1    4450 1450
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR42
U 1 1 530382DF
P 4250 1450
F 0 "#PWR42" H 4250 1550 30  0001 C CNN
F 1 "VCC" H 4250 1550 30  0000 C CNN
F 2 "" H 4250 1450 60  0000 C CNN
F 3 "" H 4250 1450 60  0000 C CNN
	1    4250 1450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR41
U 1 1 530382E5
P 3250 1450
F 0 "#PWR41" H 3250 1550 30  0001 C CNN
F 1 "VDD" H 3250 1560 30  0000 C CNN
F 2 "" H 3250 1450 60  0000 C CNN
F 3 "" H 3250 1450 60  0000 C CNN
	1    3250 1450
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR44
U 1 1 530382EB
P 3450 1450
F 0 "#PWR44" H 3450 1450 30  0001 C CNN
F 1 "VSS" H 3450 1380 30  0000 C CNN
F 2 "" H 3450 1450 60  0000 C CNN
F 3 "" H 3450 1450 60  0000 C CNN
	1    3450 1450
	-1   0    0    1   
$EndComp
$Comp
L AGND #PWR46
U 1 1 53038398
P 3050 1450
F 0 "#PWR46" H 3050 1450 40  0001 C CNN
F 1 "AGND" H 3050 1380 50  0000 C CNN
F 2 "" H 3050 1450 60  0000 C CNN
F 3 "" H 3050 1450 60  0000 C CNN
	1    3050 1450
	-1   0    0    1   
$EndComp
$Comp
L C C114
U 1 1 530383BA
P 4050 6700
F 0 "C114" H 4050 6800 40  0000 L CNN
F 1 "C" H 4056 6615 40  0000 L CNN
F 2 "~" H 4088 6550 30  0000 C CNN
F 3 "~" H 4050 6700 60  0000 C CNN
	1    4050 6700
	-1   0    0    -1  
$EndComp
$Comp
L C C113
U 1 1 530383C0
P 3800 6700
F 0 "C113" H 3800 6800 40  0000 L CNN
F 1 "C" H 3806 6615 40  0000 L CNN
F 2 "~" H 3838 6550 30  0000 C CNN
F 3 "~" H 3800 6700 60  0000 C CNN
	1    3800 6700
	-1   0    0    -1  
$EndComp
$Comp
L AGND #PWR72
U 1 1 530383CC
P 3800 6950
F 0 "#PWR72" H 3800 6950 40  0001 C CNN
F 1 "AGND" H 3800 6880 50  0000 C CNN
F 2 "" H 3800 6950 60  0000 C CNN
F 3 "" H 3800 6950 60  0000 C CNN
	1    3800 6950
	-1   0    0    -1  
$EndComp
$Comp
L C C110
U 1 1 5303841E
P 3250 6700
F 0 "C110" H 3250 6800 40  0000 L CNN
F 1 "C" H 3256 6615 40  0000 L CNN
F 2 "~" H 3288 6550 30  0000 C CNN
F 3 "~" H 3250 6700 60  0000 C CNN
	1    3250 6700
	-1   0    0    -1  
$EndComp
$Comp
L C C109
U 1 1 53038424
P 3000 6700
F 0 "C109" H 3000 6800 40  0000 L CNN
F 1 "C" H 3006 6615 40  0000 L CNN
F 2 "~" H 3038 6550 30  0000 C CNN
F 3 "~" H 3000 6700 60  0000 C CNN
	1    3000 6700
	-1   0    0    -1  
$EndComp
$Comp
L C C112
U 1 1 53038436
P 3450 7300
F 0 "C112" H 3450 7400 40  0000 L CNN
F 1 "C" H 3456 7215 40  0000 L CNN
F 2 "~" H 3488 7150 30  0000 C CNN
F 3 "~" H 3450 7300 60  0000 C CNN
	1    3450 7300
	-1   0    0    -1  
$EndComp
$Comp
L C C111
U 1 1 5303843C
P 3700 7300
F 0 "C111" H 3700 7400 40  0000 L CNN
F 1 "C" H 3706 7215 40  0000 L CNN
F 2 "~" H 3738 7150 30  0000 C CNN
F 3 "~" H 3700 7300 60  0000 C CNN
	1    3700 7300
	-1   0    0    -1  
$EndComp
$Comp
L DGND #PWR57
U 1 1 5303849A
P 7750 4000
F 0 "#PWR57" H 7750 4000 40  0001 C CNN
F 1 "DGND" H 7750 3930 40  0000 C CNN
F 2 "" H 7750 4000 60  0000 C CNN
F 3 "" H 7750 4000 60  0000 C CNN
	1    7750 4000
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR68
U 1 1 530384AA
P 5450 6250
F 0 "#PWR68" H 5450 6250 40  0001 C CNN
F 1 "AGND" H 5450 6180 50  0000 C CNN
F 2 "" H 5450 6250 60  0000 C CNN
F 3 "" H 5450 6250 60  0000 C CNN
	1    5450 6250
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR69
U 1 1 530384B0
P 5650 6250
F 0 "#PWR69" H 5650 6250 40  0001 C CNN
F 1 "AGND" H 5650 6180 50  0000 C CNN
F 2 "" H 5650 6250 60  0000 C CNN
F 3 "" H 5650 6250 60  0000 C CNN
	1    5650 6250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR70
U 1 1 530384B8
P 5850 6250
F 0 "#PWR70" H 5850 6350 30  0001 C CNN
F 1 "VCC" H 5850 6350 30  0000 C CNN
F 2 "" H 5850 6250 60  0000 C CNN
F 3 "" H 5850 6250 60  0000 C CNN
	1    5850 6250
	-1   0    0    1   
$EndComp
Entry Wire Line
	8450 1500 8550 1600
Entry Wire Line
	8450 2350 8550 2450
Entry Wire Line
	8450 2550 8550 2650
Entry Wire Line
	8450 2750 8550 2850
Entry Wire Line
	8450 2950 8550 3050
Entry Wire Line
	8450 3150 8550 3250
Entry Wire Line
	8450 3350 8550 3450
Entry Wire Line
	8450 3550 8550 3650
Entry Wire Line
	8450 4150 8550 4250
Entry Wire Line
	8450 4350 8550 4450
Entry Wire Line
	8450 5350 8550 5450
Entry Wire Line
	8450 5150 8550 5250
Entry Wire Line
	8450 4950 8550 5050
Entry Wire Line
	8450 4750 8550 4850
Entry Wire Line
	8450 4550 8550 4650
Entry Wire Line
	8450 6200 8550 6300
$Comp
L AGND #PWR?
U 1 1 530A088E
P 3650 6250
F 0 "#PWR?" H 3650 6250 40  0001 C CNN
F 1 "AGND" H 3650 6180 50  0000 C CNN
F 2 "" H 3650 6250 60  0000 C CNN
F 3 "" H 3650 6250 60  0000 C CNN
	1    3650 6250
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A2563
P 3000 6950
F 0 "#PWR?" H 3000 6950 40  0001 C CNN
F 1 "AGND" H 3000 6880 50  0000 C CNN
F 2 "" H 3000 6950 60  0000 C CNN
F 3 "" H 3000 6950 60  0000 C CNN
	1    3000 6950
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A2569
P 3450 7550
F 0 "#PWR?" H 3450 7550 40  0001 C CNN
F 1 "AGND" H 3450 7480 50  0000 C CNN
F 2 "" H 3450 7550 60  0000 C CNN
F 3 "" H 3450 7550 60  0000 C CNN
	1    3450 7550
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A256F
P 3050 6250
F 0 "#PWR?" H 3050 6250 40  0001 C CNN
F 1 "AGND" H 3050 6180 50  0000 C CNN
F 2 "" H 3050 6250 60  0000 C CNN
F 3 "" H 3050 6250 60  0000 C CNN
	1    3050 6250
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A4CA6
P 3850 6250
F 0 "#PWR?" H 3850 6250 40  0001 C CNN
F 1 "AGND" H 3850 6180 50  0000 C CNN
F 2 "" H 3850 6250 60  0000 C CNN
F 3 "" H 3850 6250 60  0000 C CNN
	1    3850 6250
	-1   0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 530A4F36
P 4450 6700
F 0 "C?" H 4450 6800 40  0000 L CNN
F 1 "C" H 4456 6615 40  0000 L CNN
F 2 "~" H 4488 6550 30  0000 C CNN
F 3 "~" H 4450 6700 60  0000 C CNN
	1    4450 6700
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 530A4F3C
P 4700 6700
F 0 "C?" H 4700 6800 40  0000 L CNN
F 1 "C" H 4706 6615 40  0000 L CNN
F 2 "~" H 4738 6550 30  0000 C CNN
F 3 "~" H 4700 6700 60  0000 C CNN
	1    4700 6700
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A4F42
P 4700 6950
F 0 "#PWR?" H 4700 6950 40  0001 C CNN
F 1 "AGND" H 4700 6880 50  0000 C CNN
F 2 "" H 4700 6950 60  0000 C CNN
F 3 "" H 4700 6950 60  0000 C CNN
	1    4700 6950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 530A4F4A
P 4850 7300
F 0 "C?" H 4850 7400 40  0000 L CNN
F 1 "C" H 4856 7215 40  0000 L CNN
F 2 "~" H 4888 7150 30  0000 C CNN
F 3 "~" H 4850 7300 60  0000 C CNN
	1    4850 7300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 530A4F50
P 5100 7300
F 0 "C?" H 5100 7400 40  0000 L CNN
F 1 "C" H 5106 7215 40  0000 L CNN
F 2 "~" H 5138 7150 30  0000 C CNN
F 3 "~" H 5100 7300 60  0000 C CNN
	1    5100 7300
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A4F56
P 5100 7550
F 0 "#PWR?" H 5100 7550 40  0001 C CNN
F 1 "AGND" H 5100 7480 50  0000 C CNN
F 2 "" H 5100 7550 60  0000 C CNN
F 3 "" H 5100 7550 60  0000 C CNN
	1    5100 7550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 530A5984
P 5250 6700
F 0 "C?" H 5250 6800 40  0000 L CNN
F 1 "C" H 5256 6615 40  0000 L CNN
F 2 "~" H 5288 6550 30  0000 C CNN
F 3 "~" H 5250 6700 60  0000 C CNN
	1    5250 6700
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 530A598A
P 5500 6700
F 0 "C?" H 5500 6800 40  0000 L CNN
F 1 "C" H 5506 6615 40  0000 L CNN
F 2 "~" H 5538 6550 30  0000 C CNN
F 3 "~" H 5500 6700 60  0000 C CNN
	1    5500 6700
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A5990
P 5500 6950
F 0 "#PWR?" H 5500 6950 40  0001 C CNN
F 1 "AGND" H 5500 6880 50  0000 C CNN
F 2 "" H 5500 6950 60  0000 C CNN
F 3 "" H 5500 6950 60  0000 C CNN
	1    5500 6950
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A61ED
P 5050 6250
F 0 "#PWR?" H 5050 6250 40  0001 C CNN
F 1 "AGND" H 5050 6180 50  0000 C CNN
F 2 "" H 5050 6250 60  0000 C CNN
F 3 "" H 5050 6250 60  0000 C CNN
	1    5050 6250
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A61F4
P 4650 6250
F 0 "#PWR?" H 4650 6250 40  0001 C CNN
F 1 "AGND" H 4650 6180 50  0000 C CNN
F 2 "" H 4650 6250 60  0000 C CNN
F 3 "" H 4650 6250 60  0000 C CNN
	1    4650 6250
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530A61FB
P 4250 6250
F 0 "#PWR?" H 4250 6250 40  0001 C CNN
F 1 "AGND" H 4250 6180 50  0000 C CNN
F 2 "" H 4250 6250 60  0000 C CNN
F 3 "" H 4250 6250 60  0000 C CNN
	1    4250 6250
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 530AA18C
P 3650 1450
F 0 "#PWR?" H 3650 1450 40  0001 C CNN
F 1 "DGND" H 3650 1380 40  0000 C CNN
F 2 "" H 3650 1450 60  0000 C CNN
F 3 "" H 3650 1450 60  0000 C CNN
	1    3650 1450
	-1   0    0    1   
$EndComp
$Comp
L DGND #PWR?
U 1 1 530AA192
P 4050 1450
F 0 "#PWR?" H 4050 1450 40  0001 C CNN
F 1 "DGND" H 4050 1380 40  0000 C CNN
F 2 "" H 4050 1450 60  0000 C CNN
F 3 "" H 4050 1450 60  0000 C CNN
	1    4050 1450
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530AEC68
P 9600 1600
F 0 "C?" H 9600 1700 40  0000 L CNN
F 1 "C" H 9606 1515 40  0000 L CNN
F 2 "~" H 9638 1450 14  0000 C CNN
F 3 "~" H 9600 1600 60  0000 C CNN
	1    9600 1600
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530AEC62
P 9300 1600
F 0 "C?" H 9300 1700 40  0000 L CNN
F 1 "C" H 9306 1515 40  0000 L CNN
F 2 "~" H 9338 1450 14  0000 C CNN
F 3 "~" H 9300 1600 60  0000 C CNN
	1    9300 1600
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B0258
P 10300 1600
F 0 "C?" H 10300 1700 40  0000 L CNN
F 1 "C" H 10306 1515 40  0000 L CNN
F 2 "~" H 10338 1450 14  0000 C CNN
F 3 "~" H 10300 1600 60  0000 C CNN
	1    10300 1600
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B0262
P 10000 1600
F 0 "C?" H 10000 1700 40  0000 L CNN
F 1 "C" H 10006 1515 40  0000 L CNN
F 2 "~" H 10038 1450 14  0000 C CNN
F 3 "~" H 10000 1600 60  0000 C CNN
	1    10000 1600
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B0270
P 9600 3300
F 0 "C?" H 9600 3400 40  0000 L CNN
F 1 "C" H 9606 3215 40  0000 L CNN
F 2 "~" H 9638 3150 14  0000 C CNN
F 3 "~" H 9600 3300 60  0000 C CNN
	1    9600 3300
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B027A
P 9300 3300
F 0 "C?" H 9300 3400 40  0000 L CNN
F 1 "C" H 9306 3215 40  0000 L CNN
F 2 "~" H 9338 3150 14  0000 C CNN
F 3 "~" H 9300 3300 60  0000 C CNN
	1    9300 3300
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B0288
P 10300 3300
F 0 "C?" H 10300 3400 40  0000 L CNN
F 1 "C" H 10306 3215 40  0000 L CNN
F 2 "~" H 10338 3150 14  0000 C CNN
F 3 "~" H 10300 3300 60  0000 C CNN
	1    10300 3300
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B0292
P 10000 3300
F 0 "C?" H 10000 3400 40  0000 L CNN
F 1 "C" H 10006 3215 40  0000 L CNN
F 2 "~" H 10038 3150 14  0000 C CNN
F 3 "~" H 10000 3300 60  0000 C CNN
	1    10000 3300
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B02A0
P 9600 5050
F 0 "C?" H 9600 5150 40  0000 L CNN
F 1 "C" H 9606 4965 40  0000 L CNN
F 2 "~" H 9638 4900 14  0000 C CNN
F 3 "~" H 9600 5050 60  0000 C CNN
	1    9600 5050
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B02AA
P 9300 5050
F 0 "C?" H 9300 5150 40  0000 L CNN
F 1 "C" H 9306 4965 40  0000 L CNN
F 2 "~" H 9338 4900 14  0000 C CNN
F 3 "~" H 9300 5050 60  0000 C CNN
	1    9300 5050
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B02B8
P 10300 5050
F 0 "C?" H 10300 5150 40  0000 L CNN
F 1 "C" H 10306 4965 40  0000 L CNN
F 2 "~" H 10338 4900 14  0000 C CNN
F 3 "~" H 10300 5050 60  0000 C CNN
	1    10300 5050
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 530B02C2
P 10000 5050
F 0 "C?" H 10000 5150 40  0000 L CNN
F 1 "C" H 10006 4965 40  0000 L CNN
F 2 "~" H 10038 4900 14  0000 C CNN
F 3 "~" H 10000 5050 60  0000 C CNN
	1    10000 5050
	-1   0    0    1   
$EndComp
Text Label 9450 1300 1    60   ~ 0
VCC1
Text Label 10150 1300 1    60   ~ 0
VCC2
Text Label 9450 3000 1    60   ~ 0
VCC3
Text Label 10150 3000 1    60   ~ 0
VCC4
Text Label 9450 4750 1    60   ~ 0
VCC5
Text Label 10150 4750 1    60   ~ 0
VCC6
Text Label 9450 2150 1    60   ~ 0
AGND1
Text Label 10150 2150 1    60   ~ 0
AGND2
Text Label 9450 3850 1    60   ~ 0
AGND3
Text Label 10150 3850 1    60   ~ 0
AGND4
Text Label 10150 5600 1    60   ~ 0
AGND6
$Comp
L AGND #PWR?
U 1 1 530B27D0
P 9450 2200
F 0 "#PWR?" H 9450 2200 40  0001 C CNN
F 1 "AGND" H 9450 2100 50  0000 C CNN
F 2 "" H 9450 2200 60  0000 C CNN
F 3 "" H 9450 2200 60  0000 C CNN
	1    9450 2200
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530B27EA
P 10150 2200
F 0 "#PWR?" H 10150 2200 40  0001 C CNN
F 1 "AGND" H 10150 2100 50  0000 C CNN
F 2 "" H 10150 2200 60  0000 C CNN
F 3 "" H 10150 2200 60  0000 C CNN
	1    10150 2200
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530B27F0
P 9450 3900
F 0 "#PWR?" H 9450 3900 40  0001 C CNN
F 1 "AGND" H 9450 3800 50  0000 C CNN
F 2 "" H 9450 3900 60  0000 C CNN
F 3 "" H 9450 3900 60  0000 C CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530B27F6
P 10150 3900
F 0 "#PWR?" H 10150 3900 40  0001 C CNN
F 1 "AGND" H 10150 3800 50  0000 C CNN
F 2 "" H 10150 3900 60  0000 C CNN
F 3 "" H 10150 3900 60  0000 C CNN
	1    10150 3900
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530B27FC
P 9450 5650
F 0 "#PWR?" H 9450 5650 40  0001 C CNN
F 1 "AGND" H 9450 5550 50  0000 C CNN
F 2 "" H 9450 5650 60  0000 C CNN
F 3 "" H 9450 5650 60  0000 C CNN
	1    9450 5650
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 530B2802
P 10150 5650
F 0 "#PWR?" H 10150 5650 40  0001 C CNN
F 1 "AGND" H 10150 5550 50  0000 C CNN
F 2 "" H 10150 5650 60  0000 C CNN
F 3 "" H 10150 5650 60  0000 C CNN
	1    10150 5650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 530B2808
P 9450 1000
F 0 "#PWR?" H 9450 1100 30  0001 C CNN
F 1 "VCC" H 9450 1100 30  0000 C CNN
F 2 "" H 9450 1000 60  0000 C CNN
F 3 "" H 9450 1000 60  0000 C CNN
	1    9450 1000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 530B280E
P 10150 1000
F 0 "#PWR?" H 10150 1100 30  0001 C CNN
F 1 "VCC" H 10150 1100 30  0000 C CNN
F 2 "" H 10150 1000 60  0000 C CNN
F 3 "" H 10150 1000 60  0000 C CNN
	1    10150 1000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 530B2814
P 9450 2700
F 0 "#PWR?" H 9450 2800 30  0001 C CNN
F 1 "VCC" H 9450 2800 30  0000 C CNN
F 2 "" H 9450 2700 60  0000 C CNN
F 3 "" H 9450 2700 60  0000 C CNN
	1    9450 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 530B281A
P 10150 2700
F 0 "#PWR?" H 10150 2800 30  0001 C CNN
F 1 "VCC" H 10150 2800 30  0000 C CNN
F 2 "" H 10150 2700 60  0000 C CNN
F 3 "" H 10150 2700 60  0000 C CNN
	1    10150 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 530B2820
P 9450 4450
F 0 "#PWR?" H 9450 4550 30  0001 C CNN
F 1 "VCC" H 9450 4550 30  0000 C CNN
F 2 "" H 9450 4450 60  0000 C CNN
F 3 "" H 9450 4450 60  0000 C CNN
	1    9450 4450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 530B2826
P 10150 4450
F 0 "#PWR?" H 10150 4550 30  0001 C CNN
F 1 "VCC" H 10150 4550 30  0000 C CNN
F 2 "" H 10150 4450 60  0000 C CNN
F 3 "" H 10150 4450 60  0000 C CNN
	1    10150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3750 7750 3750
Wire Wire Line
	5450 950  5450 1500
Wire Wire Line
	5650 950  5650 1500
Wire Wire Line
	5850 950  5850 1500
Wire Wire Line
	5450 6200 5450 6250
Wire Wire Line
	5650 6200 5650 6250
Wire Wire Line
	5850 6200 5850 6200
Wire Wire Line
	6050 1500 8450 1500
Wire Wire Line
	6900 2350 8450 2350
Wire Wire Line
	6900 2550 8450 2550
Wire Wire Line
	6900 2750 8450 2750
Wire Wire Line
	6900 2950 8450 2950
Wire Wire Line
	6900 3350 8450 3350
Wire Wire Line
	6900 3550 8450 3550
Wire Wire Line
	6900 3150 8450 3150
Wire Wire Line
	6900 4150 8450 4150
Wire Wire Line
	6900 4350 8450 4350
Wire Wire Line
	6900 4550 8450 4550
Wire Wire Line
	6900 4750 8450 4750
Wire Wire Line
	6900 5150 8450 5150
Wire Wire Line
	6900 5350 8450 5350
Wire Wire Line
	6900 4950 8450 4950
Wire Wire Line
	6050 6200 8450 6200
Wire Bus Line
	8550 1600 8550 2450
Wire Bus Line
	8550 2450 8550 2650
Wire Bus Line
	8550 2650 8550 2850
Wire Bus Line
	8550 2850 8550 3050
Wire Bus Line
	8550 3050 8550 3250
Wire Bus Line
	8550 3250 8550 3450
Wire Bus Line
	8550 3450 8550 3650
Wire Bus Line
	8550 3650 8550 4250
Wire Bus Line
	8550 4250 8550 4450
Wire Bus Line
	8550 4450 8550 4650
Wire Bus Line
	8550 4650 8550 4850
Wire Bus Line
	8550 4850 8550 5050
Wire Bus Line
	8550 5050 8550 5250
Wire Bus Line
	8550 5250 8550 5450
Wire Bus Line
	8550 5450 8550 6300
Wire Wire Line
	6900 3950 7750 3950
Wire Wire Line
	7750 3950 7750 4000
Wire Wire Line
	3050 6200 3050 6250
Wire Wire Line
	3450 6200 3450 7100
Wire Wire Line
	3250 6200 3250 6500
Wire Wire Line
	3250 6900 3000 6900
Wire Wire Line
	3450 7500 3700 7500
Wire Wire Line
	3000 6900 3000 6950
Wire Wire Line
	3450 7500 3450 7550
Wire Wire Line
	3650 6250 3650 6200
Wire Wire Line
	3450 7100 3700 7100
Wire Wire Line
	3250 6500 3000 6500
Wire Wire Line
	3800 6950 3800 6900
Wire Wire Line
	3800 6900 4050 6900
Wire Wire Line
	3800 6500 4050 6500
Wire Wire Line
	4050 6500 4050 6200
Wire Wire Line
	3850 6250 3850 6200
Wire Wire Line
	4700 6950 4700 6900
Wire Wire Line
	4700 6900 4450 6900
Wire Wire Line
	5100 7550 5100 7500
Wire Wire Line
	5100 7500 4850 7500
Wire Wire Line
	4700 6500 4450 6500
Wire Wire Line
	5100 7100 4850 7100
Wire Wire Line
	4450 6500 4450 6200
Wire Wire Line
	4850 7100 4850 6200
Wire Wire Line
	5500 6950 5500 6900
Wire Wire Line
	5500 6900 5250 6900
Wire Wire Line
	5250 6500 5500 6500
Wire Wire Line
	5250 6200 5250 6500
Wire Wire Line
	5850 6250 5850 6200
Wire Wire Line
	5050 6200 5050 6250
Wire Wire Line
	4650 6200 4650 6250
Wire Wire Line
	4250 6200 4250 6250
Wire Wire Line
	3050 1450 3050 1500
Wire Wire Line
	4650 950  4650 1500
Wire Wire Line
	4250 1450 4250 1500
Wire Wire Line
	4450 1450 4450 1500
Wire Wire Line
	3250 1450 3250 1500
Wire Wire Line
	3450 1450 3450 1500
Wire Wire Line
	3650 1450 3650 1500
Wire Wire Line
	4050 1450 4050 1500
Wire Wire Line
	4850 1500 4850 1450
Wire Wire Line
	4850 1450 5050 1450
Wire Wire Line
	5050 1450 5250 1450
Wire Wire Line
	5050 950  5050 1450
Wire Wire Line
	5050 1450 5050 1500
Connection ~ 5050 1450
Wire Wire Line
	5250 1450 5250 1500
Wire Wire Line
	3850 1500 3850 950 
Wire Wire Line
	3050 1500 2500 1500
Wire Wire Line
	3050 6200 2500 6200
Wire Wire Line
	2200 2350 1200 2350
Wire Wire Line
	2200 2550 1200 2550
Wire Wire Line
	2200 2750 1200 2750
Wire Wire Line
	1200 2950 2200 2950
Wire Wire Line
	1200 3150 2200 3150
Wire Wire Line
	2200 3350 1200 3350
Wire Wire Line
	2200 3550 1200 3550
Wire Wire Line
	1200 3750 2200 3750
Wire Wire Line
	2200 3950 1200 3950
Wire Wire Line
	2200 5350 1200 5350
Wire Wire Line
	2200 4950 1200 4950
Wire Wire Line
	2200 4350 1200 4350
Wire Wire Line
	2200 4150 1200 4150
Wire Wire Line
	2200 4750 1200 4750
Wire Wire Line
	2200 4550 1200 4550
Wire Wire Line
	1200 5150 2200 5150
Wire Wire Line
	9300 1400 9300 1350
Wire Wire Line
	9300 1350 9450 1350
Wire Wire Line
	9450 1350 9600 1350
Wire Wire Line
	9600 1350 9600 1400
Wire Wire Line
	9300 1850 9450 1850
Wire Wire Line
	9450 1850 9600 1850
Wire Wire Line
	9600 1850 9600 1800
Wire Wire Line
	9300 1800 9300 1850
Wire Wire Line
	9450 1000 9450 1350
Connection ~ 9450 1350
Wire Wire Line
	9450 1850 9450 2200
Connection ~ 9450 1850
Wire Wire Line
	10000 1400 10000 1350
Wire Wire Line
	10000 1350 10150 1350
Wire Wire Line
	10150 1350 10300 1350
Wire Wire Line
	10300 1350 10300 1400
Wire Wire Line
	10000 1850 10150 1850
Wire Wire Line
	10150 1850 10300 1850
Wire Wire Line
	10300 1850 10300 1800
Wire Wire Line
	10000 1800 10000 1850
Wire Wire Line
	10150 1000 10150 1350
Connection ~ 10150 1350
Wire Wire Line
	10150 1850 10150 2200
Connection ~ 10150 1850
Wire Wire Line
	9300 3100 9300 3050
Wire Wire Line
	9300 3050 9450 3050
Wire Wire Line
	9450 3050 9600 3050
Wire Wire Line
	9600 3050 9600 3100
Wire Wire Line
	9300 3550 9450 3550
Wire Wire Line
	9450 3550 9600 3550
Wire Wire Line
	9600 3550 9600 3500
Wire Wire Line
	9300 3500 9300 3550
Wire Wire Line
	9450 2700 9450 3050
Connection ~ 9450 3050
Wire Wire Line
	9450 3550 9450 3900
Connection ~ 9450 3550
Wire Wire Line
	10000 3100 10000 3050
Wire Wire Line
	10000 3050 10150 3050
Wire Wire Line
	10150 3050 10300 3050
Wire Wire Line
	10300 3050 10300 3100
Wire Wire Line
	10000 3550 10150 3550
Wire Wire Line
	10150 3550 10300 3550
Wire Wire Line
	10300 3550 10300 3500
Wire Wire Line
	10000 3500 10000 3550
Wire Wire Line
	10150 2700 10150 3050
Connection ~ 10150 3050
Wire Wire Line
	10150 3550 10150 3900
Connection ~ 10150 3550
Wire Wire Line
	9300 4850 9300 4800
Wire Wire Line
	9300 4800 9450 4800
Wire Wire Line
	9450 4800 9600 4800
Wire Wire Line
	9600 4800 9600 4850
Wire Wire Line
	9300 5300 9450 5300
Wire Wire Line
	9450 5300 9600 5300
Wire Wire Line
	9600 5300 9600 5250
Wire Wire Line
	9300 5250 9300 5300
Wire Wire Line
	9450 4450 9450 4800
Connection ~ 9450 4800
Wire Wire Line
	9450 5300 9450 5650
Connection ~ 9450 5300
Wire Wire Line
	10000 4850 10000 4800
Wire Wire Line
	10000 4800 10150 4800
Wire Wire Line
	10150 4800 10300 4800
Wire Wire Line
	10300 4800 10300 4850
Wire Wire Line
	10000 5300 10150 5300
Wire Wire Line
	10150 5300 10300 5300
Wire Wire Line
	10300 5300 10300 5250
Wire Wire Line
	10000 5250 10000 5300
Wire Wire Line
	10150 4450 10150 4800
Connection ~ 10150 4800
Wire Wire Line
	10150 5300 10150 5650
Connection ~ 10150 5300
$Comp
L TST P?
U 1 1 530CCA65
P 5850 950
F 0 "P?" H 5850 1250 40  0000 C CNN
F 1 "TST" H 5850 1200 30  0000 C CNN
F 2 "~" H 5850 950 60  0000 C CNN
F 3 "~" H 5850 950 60  0000 C CNN
	1    5850 950 
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 530CCA6B
P 5650 950
F 0 "P?" H 5650 1250 40  0000 C CNN
F 1 "TST" H 5650 1200 30  0000 C CNN
F 2 "~" H 5650 950 60  0000 C CNN
F 3 "~" H 5650 950 60  0000 C CNN
	1    5650 950 
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 530CCA71
P 5450 950
F 0 "P?" H 5450 1250 40  0000 C CNN
F 1 "TST" H 5450 1200 30  0000 C CNN
F 2 "~" H 5450 950 60  0000 C CNN
F 3 "~" H 5450 950 60  0000 C CNN
	1    5450 950 
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 530CCA77
P 5050 950
F 0 "P?" H 5050 1250 40  0000 C CNN
F 1 "TST" H 5050 1200 30  0000 C CNN
F 2 "~" H 5050 950 60  0000 C CNN
F 3 "~" H 5050 950 60  0000 C CNN
	1    5050 950 
	1    0    0    -1  
$EndComp
$Comp
L TST P?
U 1 1 530CCA7D
P 3850 950
F 0 "P?" H 3850 1250 40  0000 C CNN
F 1 "TST" H 3850 1200 30  0000 C CNN
F 2 "~" H 3850 950 60  0000 C CNN
F 3 "~" H 3850 950 60  0000 C CNN
	1    3850 950 
	1    0    0    -1  
$EndComp
Text HLabel 1200 5350 0    60   Input ~ 0
ADC_IN6
Text HLabel 1200 4750 0    60   Input ~ 0
ADC_IN5
Text HLabel 1200 4150 0    60   Input ~ 0
ADC_IN4
Text HLabel 1200 2350 0    60   Input ~ 0
ADC_IN1
Text Label 4650 950  3    60   ~ 0
V DRIVE
Text Label 9450 5600 1    60   ~ 0
AGND5
Text Label 2500 6200 0    60   ~ 0
AGND6
Text Label 2500 1500 0    60   ~ 0
AGND1
Text Label 1200 3950 0    60   ~ 0
AVCC4
Text Label 1200 3750 0    60   ~ 0
AVCC3
Text Label 1200 3350 0    60   ~ 0
AGND3
Text Label 1200 3150 0    60   ~ 0
AGND2
Text Label 1200 2550 0    60   ~ 0
AVCC1
Text Label 1200 2750 0    60   ~ 0
AVCC2
Text HLabel 1200 2950 0    60   Input ~ 0
ADC_IN2
Text HLabel 1200 3550 0    60   Input ~ 0
ADC_IN3
Text Label 1200 4350 0    60   ~ 0
AGND4
Text Label 1200 4550 0    60   ~ 0
AGND5
Text Label 1200 4950 0    60   ~ 0
AVCC5
Text Label 1200 5150 0    60   ~ 0
AVCC6
Text HLabel 7750 3750 2    60   Input ~ 0
VDD +3.3V
Text Label 7200 3750 0    60   ~ 0
V DRIVE
$EndSCHEMATC
