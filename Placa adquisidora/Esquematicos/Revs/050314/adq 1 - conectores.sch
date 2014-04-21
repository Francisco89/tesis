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
LIBS:adq 1 - conectores-cache
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
L QTH_120 K1
U 1 1 530192DF
P 8000 2150
F 0 "K1" H 7600 3700 60  0000 C CNN
F 1 "QTH_120" H 8300 3700 60  0000 C CNN
F 2 "~" H 8000 2150 60  0000 C CNN
F 3 "~" H 8000 2150 60  0000 C CNN
	1    8000 2150
	1    0    0    -1  
$EndComp
$Comp
L QTH_120 K1
U 2 1 530192F6
P 10150 4950
F 0 "K1" H 9750 6500 60  0000 C CNN
F 1 "QTH_120" H 10450 6500 60  0000 C CNN
F 2 "~" H 10150 4950 60  0000 C CNN
F 3 "~" H 10150 4950 60  0000 C CNN
	2    10150 4950
	1    0    0    -1  
$EndComp
$Comp
L DB25 J1
U 1 1 5301AD1F
P 900 2400
F 0 "J1" H 950 3750 70  0000 C CNN
F 1 "DB25" H 850 1050 70  0000 C CNN
F 2 "" H 900 2400 60  0000 C CNN
F 3 "" H 900 2400 60  0000 C CNN
	1    900  2400
	-1   0    0    1   
$EndComp
$Comp
L DB25 J2
U 1 1 5301AD2C
P 900 5350
F 0 "J2" H 950 6700 70  0000 C CNN
F 1 "DB25" H 850 4000 70  0000 C CNN
F 2 "" H 900 5350 60  0000 C CNN
F 3 "" H 900 5350 60  0000 C CNN
	1    900  5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 1200 3900 1200
Wire Wire Line
	1350 1300 1950 1300
Wire Wire Line
	1350 1400 3900 1400
Wire Wire Line
	1350 1500 1950 1500
Wire Wire Line
	3900 1600 1350 1600
Wire Wire Line
	1350 1800 3900 1800
Wire Wire Line
	1350 2000 3900 2000
Wire Wire Line
	1350 2200 3900 2200
Wire Wire Line
	1350 2400 3900 2400
Wire Wire Line
	1350 2600 3900 2600
Wire Wire Line
	1350 2800 3900 2800
Wire Wire Line
	1350 3000 3900 3000
Wire Wire Line
	1350 3200 3900 3200
Wire Wire Line
	1350 3400 3900 3400
Wire Wire Line
	1350 3600 3900 3600
Wire Wire Line
	1350 3500 1950 3500
Wire Wire Line
	1350 3300 1950 3300
Wire Wire Line
	1350 3100 1950 3100
Wire Wire Line
	1350 2900 1950 2900
Wire Wire Line
	1350 2700 1950 2700
Wire Wire Line
	1350 2500 1950 2500
Wire Wire Line
	1350 1700 1950 1700
Wire Wire Line
	1350 1900 1950 1900
Wire Wire Line
	1350 2100 1950 2100
Wire Wire Line
	1350 2300 1950 2300
Wire Wire Line
	1350 4150 3900 4150
Wire Wire Line
	1350 4350 3900 4350
Wire Wire Line
	3900 4550 1350 4550
Wire Wire Line
	1350 4750 3900 4750
Wire Wire Line
	1350 4950 3900 4950
Wire Wire Line
	1350 5150 3900 5150
Wire Wire Line
	1350 5350 3900 5350
Wire Wire Line
	1350 5550 3900 5550
Wire Wire Line
	1350 5750 3900 5750
Wire Wire Line
	1350 5950 3900 5950
Wire Wire Line
	1350 6150 3900 6150
Wire Wire Line
	1350 6350 3900 6350
Wire Wire Line
	1350 6550 3900 6550
Text HLabel 1950 1300 2    60   Input ~ 0
+V Banco
Text HLabel 1950 1700 2    60   Input ~ 0
-V Banco
Text HLabel 1950 1500 2    60   Input ~ 0
GND Banco
Text HLabel 1950 2300 2    60   Input ~ 0
D out - Estandar 4
Text HLabel 1950 2500 2    60   Input ~ 0
D out - Estandar 3
Text HLabel 1950 2700 2    60   Input ~ 0
D out - Estandar 2
Text HLabel 1950 2900 2    60   Input ~ 0
D out - Estandar 1
Text HLabel 1950 3100 2    60   Input ~ 0
D out - Encoder estandar 2
Text HLabel 1950 3300 2    60   Input ~ 0
D out - Encoder estandar 1
Text HLabel 1950 3500 2    60   Input ~ 0
D out - Frecuencia Encoder
Text HLabel 3900 1400 2    60   Input ~ 0
A out - Corriente R
Text HLabel 3900 1600 2    60   Input ~ 0
A out - Corriente S
Text HLabel 3900 1800 2    60   Input ~ 0
A out - Corriente T
Text HLabel 3900 2000 2    60   Input ~ 0
A out - Tension  Bus CC
Text HLabel 3900 2200 2    60   Input ~ 0
A out - Corriente Bus CC
Text HLabel 3900 2400 2    60   Input ~ 0
A out - Dinamo Taquimetrica
Text HLabel 3900 2600 2    60   Input ~ 0
A out - Transductor de Cupla
Text HLabel 3900 2800 2    60   Input ~ 0
A out -  Tension CF PWM
Text HLabel 3900 3000 2    60   Input ~ 0
A out - No definida 1
Text HLabel 3900 3200 2    60   Input ~ 0
A out - No definida 2
Text HLabel 3900 3400 2    60   Input ~ 0
A out - No definida 3
Text HLabel 3900 3600 2    60   Input ~ 0
A out - No definida 4
Text HLabel 3900 4150 2    60   Input ~ 0
A in - Multiuso 1
Text HLabel 3900 4350 2    60   Input ~ 0
D in - PWM Fase 1
Text HLabel 3900 4550 2    60   Input ~ 0
D in - PWM Fase 2
Text HLabel 3900 4750 2    60   Input ~ 0
D in - PWM Fase 3
Text HLabel 3900 4950 2    60   Input ~ 0
D in - Estandar PWM Fase 1
Text HLabel 3900 5150 2    60   Input ~ 0
D in - Estandar PWM Fase 2
Text HLabel 3900 5350 2    60   Input ~ 0
D in - Estandar PWM Fase 3
Text HLabel 3900 5550 2    60   Input ~ 0
D in - Multiuso 1
Text HLabel 3900 5750 2    60   Input ~ 0
D in - Multiuso 2
Text HLabel 3900 5950 2    60   Input ~ 0
D in - Multiuso 3
Text HLabel 3900 6150 2    60   Input ~ 0
D in - Multiuso 4
Text HLabel 3900 6350 2    60   Input ~ 0
D in - No definida
$EndSCHEMATC
