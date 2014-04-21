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
Sheet 1 11
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
L QTH_120 K1
U 1 1 530192DF
P 10250 1950
F 0 "K1" H 10250 1950 60  0000 C CNN
F 1 "QTH_120" H 10250 1700 60  0000 C CNN
F 2 "~" H 10250 1950 60  0000 C CNN
F 3 "~" H 10250 1950 60  0000 C CNN
	1    10250 1950
	1    0    0    -1  
$EndComp
$Comp
L QTH_120 K1
U 2 1 530192F6
P 10250 5400
F 0 "K1" H 10250 5650 60  0000 C CNN
F 1 "QTH_120" H 10250 5450 60  0000 C CNN
F 2 "~" H 10250 5400 60  0000 C CNN
F 3 "~" H 10250 5400 60  0000 C CNN
	2    10250 5400
	1    0    0    -1  
$EndComp
$Comp
L DB25 J1
U 1 1 5301AD1F
P 650 2400
F 0 "J1" H 700 3750 70  0000 C CNN
F 1 "DB25" H 600 1050 70  0000 C CNN
F 2 "" H 650 2400 60  0000 C CNN
F 3 "" H 650 2400 60  0000 C CNN
	1    650  2400
	-1   0    0    1   
$EndComp
$Comp
L DB25 J2
U 1 1 5301AD2C
P 650 5700
F 0 "J2" H 700 7050 70  0000 C CNN
F 1 "DB25" H 600 4350 70  0000 C CNN
F 2 "" H 650 5700 60  0000 C CNN
F 3 "" H 650 5700 60  0000 C CNN
	1    650  5700
	-1   0    0    1   
$EndComp
Text Label 2500 1400 2    60   ~ 0
A in - Corriente R
Text Label 2500 1600 2    60   ~ 0
A in - Corriente S
Text Label 2500 1800 2    60   ~ 0
A in - Corriente T
Text Label 2500 2000 2    60   ~ 0
A in - Tension  Bus CC
Text Label 2500 2200 2    60   ~ 0
A in - Corriente Bus CC
Text Label 2500 2400 2    60   ~ 0
A in - Dinamo Taquimetrica
Text Label 2500 2600 2    60   ~ 0
A in - Transductor de Cupla
Text Label 2500 2800 2    60   ~ 0
A in -  Tension CF PWM
Text Label 2500 3000 2    60   ~ 0
A in - No definida 1
Text Label 2500 3200 2    60   ~ 0
A in - No definida 2
Text Label 2500 3400 2    60   ~ 0
A in - No definida 3
Text Label 2500 3600 2    60   ~ 0
A in - No definida 4
Text Label 2450 6800 2    60   ~ 0
D in - Estandar 4
Text Label 2450 6600 2    60   ~ 0
D in - Estandar 3
Text Label 2450 6400 2    60   ~ 0
D in - Estandar 2
Text Label 2450 6200 2    60   ~ 0
D in - Estandar 1
Text Label 2450 6000 2    60   ~ 0
D in - Encoder estandar 2
Text Label 2450 5800 2    60   ~ 0
D in - Encoder estandar 1
Text Label 2450 5600 2    60   ~ 0
D in - Frecuencia Encoder
Text Label 2500 1200 2    60   ~ 0
A out - Multiuso 1
Text Label 2600 4500 2    60   ~ 0
D out - PWM Fase 1
Text Label 2600 6500 2    60   ~ 0
D out - No definida
Text Label 2950 6300 2    60   ~ 0
D out - Multiuso 4
Text Label 2950 6100 2    60   ~ 0
D out - Multiuso 3
Text Label 2950 5900 2    60   ~ 0
D out - Multiuso 2
Text Label 2950 5700 2    60   ~ 0
D out - Multiuso 1
Text Label 2600 5500 2    60   ~ 0
D out - Estandar PWM Fase 3
Text Label 2600 5300 2    60   ~ 0
D out - Estandar PWM Fase 2
Text Label 2600 5100 2    60   ~ 0
D out - Estandar PWM Fase 1
Text Label 2600 4900 2    60   ~ 0
D out - PWM Fase 3
Text Label 2600 4700 2    60   ~ 0
D out - PWM Fase 2
$Sheet
S 3800 6250 2100 800 
U 534CD126
F0 "Entradas" 50
F1 "AislacionesDigitales.sch" 50
F2 "D in - Frecuencia Encoder" I L 3800 6350 60 
F3 "D in - Encoder estandar 1" I L 3800 6450 60 
F4 "D in - Encoder estandar 2" I L 3800 6550 60 
F5 "D in - Estandar 1" I L 3800 6650 60 
F6 "D in - Estandar 2" I L 3800 6750 60 
F7 "D in - Estandar 3" I L 3800 6850 60 
F8 "D in - Estandar 4" I L 3800 6950 60 
F9 "Frec_Encoder" I R 5900 6350 60 
F10 "Est_Enco_1" I R 5900 6450 60 
F11 "Est_Enco_2" I R 5900 6550 60 
F12 "Est_Multi_1" I R 5900 6650 60 
F13 "Est_Multi_2" I R 5900 6750 60 
F14 "Est_Multi_3" I R 5900 6850 60 
F15 "Est_Multi_4" I R 5900 6950 60 
$EndSheet
$Sheet
S 3800 4450 2100 1000
U 534CE02B
F0 "Salidas" 50
F1 "AislacionesDigitales2.sch" 50
F2 "D out - PWM Fase 3" I L 3800 4700 60 
F3 "D out - Estandar PWM Fase 1" I L 3800 4800 60 
F4 "D out - Estandar PWM Fase 2" I L 3800 4900 60 
F5 "D out - Estandar PWM Fase 3" I L 3800 5000 60 
F6 "D out - Multiuso 1" I L 3800 5100 60 
F7 "D out - Multiuso 2" I L 3800 5200 60 
F8 "D out - Multiuso 3" I L 3800 5300 60 
F9 "D out - Multiuso 4" I L 3800 5400 60 
F10 "D out - PWM Fase 1" I L 3800 4500 60 
F11 "D out - PWM Fase 2" I L 3800 4600 60 
F12 "PWM1" I R 5900 4500 60 
F13 "PWM2" I R 5900 4600 60 
F14 "PWM3" I R 5900 4700 60 
F15 "Est_PWM1" I R 5900 4800 60 
F16 "Est_PWM2" I R 5900 4900 60 
F17 "Est_PWM3" I R 5900 5000 60 
F18 "Est_Multi1" I R 5900 5100 60 
F19 "Est_Multi2" I R 5900 5200 60 
F20 "Est_Multi3" I R 5900 5300 60 
F21 "Est_Multi4" I R 5900 5400 60 
$EndSheet
Text Label 4800 6100 2    60   ~ 0
D out - Multiuso 1
Text Label 4800 5950 2    60   ~ 0
D out - Multiuso 2
Text Label 4800 5800 2    60   ~ 0
D out - Multiuso 3
Text Label 4800 5650 2    60   ~ 0
D out - Multiuso 4
$Sheet
S 2600 1100 2000 2600
U 534C31C7
F0 "ISO124" 50
F1 "AislacionesAnalogicas.sch" 50
F2 "A in - Corriente R" I L 2600 1400 60 
F3 "A in - Corriente S" I L 2600 1600 60 
F4 "A in - Corriente T" I L 2600 1800 60 
F5 "A in - Tension  Bus CC" I L 2600 2000 60 
F6 "A in - Corriente Bus CC" I L 2600 2200 60 
F7 "A in - Dinamo Taquimetrica" I L 2600 2400 60 
F8 "A in - Transductor de Cupla" I L 2600 2600 60 
F9 "A in -  Tension CF PWM" I L 2600 2800 60 
F10 "A in - No definida 1" I L 2600 3000 60 
F11 "A in - No definida 2" I L 2600 3200 60 
F12 "A in - No definida 3" I L 2600 3400 60 
F13 "A in - No definida 4" I L 2600 3600 60 
F14 "A out - Multiuso 1" I L 2600 1200 60 
F15 "Vo" I R 4600 1200 60 
F16 "Cte_R" I R 4600 1400 60 
F17 "Cte S" I R 4600 1600 60 
F18 "Cte T" I R 4600 1800 60 
F19 "VBus CC" I R 4600 2000 60 
F20 "IBus CC" I R 4600 2200 60 
F21 "Dinamo" I R 4600 2400 60 
F22 "Cupla" I R 4600 2600 60 
F23 "PWM CF" I R 4600 2800 60 
F24 "No Definida 1" I R 4600 3000 60 
F25 "No definida 2" I R 4600 3200 60 
F26 "No definida 3" I R 4600 3400 60 
F27 "No definida 4" I R 4600 3600 60 
$EndSheet
$Sheet
S 6800 1000 900  400 
U 535233A3
F0 "DAC" 50
F1 "DAC.sch" 50
F2 "Vo" I L 6800 1200 60 
F3 "CLEAR" I R 7700 1050 60 
F4 "LATCH" I R 7700 1150 60 
F5 "SCLK" I R 7700 1250 60 
F6 "Vi" I R 7700 1350 60 
$EndSheet
Wire Wire Line
	1100 1200 2600 1200
Wire Wire Line
	1100 1400 2600 1400
Wire Wire Line
	1100 1800 2600 1800
Wire Wire Line
	1100 2000 2600 2000
Wire Wire Line
	1100 2200 2600 2200
Wire Wire Line
	1100 2400 2600 2400
Wire Wire Line
	1100 2600 2600 2600
Wire Wire Line
	1100 2800 2600 2800
Wire Wire Line
	1100 3000 2600 3000
Wire Wire Line
	1100 3200 2600 3200
Wire Wire Line
	1100 3400 2600 3400
Wire Wire Line
	1100 3600 2600 3600
Wire Wire Line
	1100 4500 3800 4500
Wire Wire Line
	1100 4700 3000 4700
Wire Wire Line
	1100 4900 3050 4900
Wire Wire Line
	3100 5100 1100 5100
Wire Wire Line
	1100 5300 3150 5300
Wire Wire Line
	1100 5500 3200 5500
Wire Wire Line
	1100 5700 2950 5700
Wire Wire Line
	1100 5900 2950 5900
Wire Wire Line
	1100 6100 2950 6100
Wire Wire Line
	1100 6300 2950 6300
Wire Wire Line
	1100 6500 2600 6500
Wire Wire Line
	1100 5600 3200 5600
Wire Wire Line
	1100 5800 3150 5800
Wire Wire Line
	1100 6000 3100 6000
Wire Wire Line
	1100 6200 3050 6200
Wire Wire Line
	1100 6400 3000 6400
Wire Wire Line
	1100 6600 2950 6600
Wire Wire Line
	1100 1600 2600 1600
Wire Wire Line
	2950 6600 2950 6850
Wire Wire Line
	3000 6400 3000 6750
Wire Wire Line
	3050 6200 3050 6650
Wire Wire Line
	3100 6000 3100 6550
Wire Wire Line
	3150 5800 3150 6450
Wire Wire Line
	3200 5600 3200 6350
Wire Wire Line
	3000 4700 3000 4600
Wire Wire Line
	3000 4600 3800 4600
Wire Wire Line
	3050 4900 3050 4700
Wire Wire Line
	3050 4700 3800 4700
Wire Wire Line
	3100 4800 3100 5100
Wire Wire Line
	3100 4800 3800 4800
Wire Wire Line
	3150 5300 3150 4900
Wire Wire Line
	3150 4900 3800 4900
Wire Wire Line
	3200 5500 3200 5000
Wire Wire Line
	3200 5000 3800 5000
Wire Wire Line
	3800 5400 3700 5400
Wire Wire Line
	3700 5400 3700 5650
Wire Wire Line
	3700 5650 4800 5650
Wire Wire Line
	3800 5300 3650 5300
Wire Wire Line
	3650 5300 3650 5800
Wire Wire Line
	3650 5800 4800 5800
Wire Wire Line
	3800 5200 3600 5200
Wire Wire Line
	3600 5200 3600 5950
Wire Wire Line
	3600 5950 4800 5950
Wire Wire Line
	3800 5100 3550 5100
Wire Wire Line
	3550 5100 3550 6100
Wire Wire Line
	3550 6100 4800 6100
Wire Wire Line
	3200 6350 3800 6350
Wire Wire Line
	3150 6450 3800 6450
Wire Wire Line
	3100 6550 3800 6550
Wire Wire Line
	3050 6650 3800 6650
Wire Wire Line
	3000 6750 3800 6750
Wire Wire Line
	2950 6850 3800 6850
Wire Wire Line
	1100 6800 2900 6800
Wire Wire Line
	2900 6800 2900 6950
Wire Wire Line
	2900 6950 3800 6950
Wire Wire Line
	4600 1200 6800 1200
$Sheet
S 5050 2800 1000 200 
U 53524AFD
F0 "Filtros2" 50
F1 "Filtros2.sch" 50
F2 "Entradas" I L 5050 2900 60 
F3 "Salidas" I R 6050 2900 60 
$EndSheet
$Sheet
S 5050 3500 1000 200 
U 53524FA5
F0 "Filtros3" 50
F1 "Filtros3.sch" 50
F2 "Salidas" I R 6050 3600 60 
F3 "Entradas" I L 5050 3600 60 
$EndSheet
Wire Wire Line
	4600 1400 4800 1400
Wire Wire Line
	4600 1600 4800 1600
Wire Wire Line
	4600 1800 4800 1800
Wire Wire Line
	4600 2000 4800 2000
Wire Wire Line
	4600 2200 4800 2200
Entry Wire Line
	4800 1400 4900 1500
Entry Wire Line
	4800 1600 4900 1700
Entry Wire Line
	4800 1800 4900 1900
Entry Wire Line
	4800 2000 4900 2100
Entry Wire Line
	4800 2200 4900 2300
Wire Wire Line
	4600 2400 4800 2400
Wire Wire Line
	4600 2600 4800 2600
Wire Wire Line
	4600 2800 4800 2800
Wire Wire Line
	4600 3000 4800 3000
Wire Wire Line
	4600 3200 4800 3200
Entry Wire Line
	4800 2400 4900 2500
Entry Wire Line
	4800 2600 4900 2700
Entry Wire Line
	4800 2800 4900 2900
Entry Wire Line
	4800 3000 4900 3100
Entry Wire Line
	4800 3200 4900 3300
Wire Wire Line
	4600 3400 4800 3400
Wire Wire Line
	4600 3600 4800 3600
Entry Wire Line
	4800 3400 4900 3500
Entry Wire Line
	4800 3600 4900 3700
Wire Bus Line
	4900 1500 4900 2300
Text Label 4650 1400 0    60   ~ 0
A1
Text Label 4650 1600 0    60   ~ 0
A2
Text Label 4650 1800 0    60   ~ 0
A3
Text Label 4650 2000 0    60   ~ 0
A4
Text Label 4650 2200 0    60   ~ 0
A5
Wire Bus Line
	6200 1500 6200 2300
Entry Wire Line
	6200 1500 6300 1600
Entry Wire Line
	6200 1700 6300 1800
Entry Wire Line
	6200 1900 6300 2000
Entry Wire Line
	6200 2100 6300 2200
Entry Wire Line
	6200 2300 6300 2400
Wire Wire Line
	6300 1600 6750 1600
Wire Wire Line
	6300 1800 6750 1800
Wire Wire Line
	6300 2000 6750 2000
Wire Wire Line
	6300 2200 6750 2200
Wire Wire Line
	6300 2400 6750 2400
Text Label 6350 1600 0    60   ~ 0
ADC_IN1
Text Label 6350 1800 0    60   ~ 0
ADC_IN2
Text Label 6350 2000 0    60   ~ 0
ADC_IN3
Text Label 6350 2200 0    60   ~ 0
ADC_IN4
Text Label 6350 2400 0    60   ~ 0
ADC_IN5
Wire Bus Line
	4900 2500 4900 3300
Entry Wire Line
	6200 2500 6300 2600
Entry Wire Line
	6200 3300 6300 3400
Wire Bus Line
	6200 2500 6200 3300
Entry Wire Line
	6200 3100 6300 3200
Entry Wire Line
	6200 2900 6300 3000
Entry Wire Line
	6200 2700 6300 2800
Wire Wire Line
	6300 2600 6750 2600
Wire Wire Line
	6300 2800 6750 2800
Wire Wire Line
	6300 3000 6750 3000
Wire Wire Line
	6300 3200 6750 3200
Wire Wire Line
	6300 3400 6750 3400
Text Label 6350 2600 0    60   ~ 0
ADC_IN6
Text Label 6350 2800 0    60   ~ 0
ADC_IN7
Text Label 6350 3000 0    60   ~ 0
ADC_IN8
Text Label 6350 3200 0    60   ~ 0
ADC_IN9
Text Label 6300 3400 0    60   ~ 0
ADC_IN10
Wire Bus Line
	4900 3700 4900 3500
Wire Bus Line
	4900 3600 5050 3600
Wire Bus Line
	6200 3500 6200 3700
Wire Bus Line
	6200 3600 6050 3600
Entry Wire Line
	6200 3500 6300 3600
Entry Wire Line
	6200 3700 6300 3800
Wire Wire Line
	6300 3600 6750 3600
Wire Wire Line
	6300 3800 6750 3800
Text Label 6300 3600 0    60   ~ 0
ADC_IN11
Text Label 6300 3800 0    60   ~ 0
ADC_IN12
Text Label 4650 2400 0    60   ~ 0
A6
Text Label 4650 2600 0    60   ~ 0
A7
Text Label 4650 2800 0    60   ~ 0
A8
Text Label 4650 3000 0    60   ~ 0
A9
Text Label 4650 3200 0    60   ~ 0
A10
Text Label 4650 3400 0    60   ~ 0
A11
Text Label 4650 3600 0    60   ~ 0
A12
$Sheet
S 6750 2750 950  1100
U 53520B4C
F0 "ADC2" 50
F1 "ADC2.sch" 50
F2 "ADC_IN7" I L 6750 2800 60 
F3 "ADC_IN8" I L 6750 3000 60 
F4 "ADC_IN9" I L 6750 3200 60 
F5 "ADC_IN10" I L 6750 3400 60 
F6 "ADC_IN11" I L 6750 3600 60 
F7 "ADC_IN12" I L 6750 3800 60 
F8 "Salidas" I R 7700 3300 60 
$EndSheet
$Sheet
S 6750 1550 950  1100
U 5352084B
F0 "ADC1" 50
F1 "ADC1.sch" 50
F2 "Salidas" I R 7700 2100 60 
F3 "ADC_IN1" I L 6750 1600 60 
F4 "ADC_IN2" I L 6750 1800 60 
F5 "ADC_IN3" I L 6750 2000 60 
F6 "ADC_IN4" I L 6750 2200 60 
F7 "ADC_IN5" I L 6750 2400 60 
F8 "ADC_IN6" I L 6750 2600 60 
$EndSheet
$Sheet
S 5100 1800 1000 200 
U 5352464E
F0 "Filtros1" 50
F1 "Filtros1.sch" 50
F2 "Entradas" I L 5100 1900 60 
F3 "Salidas" I R 6100 1900 60 
$EndSheet
Wire Bus Line
	6100 1900 6200 1900
Wire Bus Line
	5100 1900 4900 1900
Wire Bus Line
	4900 2900 5050 2900
Wire Bus Line
	6050 2900 6200 2900
Entry Wire Line
	6000 4500 6100 4600
Entry Wire Line
	6000 4600 6100 4700
Entry Wire Line
	6000 4700 6100 4800
Entry Wire Line
	6000 4800 6100 4900
Entry Wire Line
	6000 4900 6100 5000
Entry Wire Line
	6000 5000 6100 5100
Entry Wire Line
	6000 5100 6100 5200
Entry Wire Line
	6000 5200 6100 5300
Entry Wire Line
	6000 5300 6100 5400
Entry Wire Line
	6000 5400 6100 5500
Wire Wire Line
	6000 4500 5900 4500
Wire Wire Line
	5900 4600 6000 4600
Wire Wire Line
	5900 4700 6000 4700
Wire Wire Line
	5900 4800 6000 4800
Wire Wire Line
	5900 4900 6000 4900
Wire Wire Line
	5900 5000 6000 5000
Wire Wire Line
	5900 5100 6000 5100
Wire Wire Line
	5900 5200 6000 5200
Wire Wire Line
	5900 5300 6000 5300
Wire Wire Line
	5900 5400 6000 5400
Wire Wire Line
	5900 6350 6000 6350
Wire Wire Line
	5900 6450 6000 6450
Wire Wire Line
	5900 6550 6000 6550
Wire Wire Line
	5900 6650 6000 6650
Wire Wire Line
	5900 6750 6000 6750
Wire Wire Line
	5900 6850 6000 6850
Wire Wire Line
	5900 6950 6000 6950
Entry Wire Line
	6000 6350 6100 6450
Entry Wire Line
	6000 6450 6100 6550
Entry Wire Line
	6000 6550 6100 6650
Entry Wire Line
	6000 6650 6100 6750
Entry Wire Line
	6000 6750 6100 6850
Entry Wire Line
	6000 6850 6100 6950
Entry Wire Line
	6000 6950 6100 7050
Wire Bus Line
	6100 6450 6100 7050
Wire Bus Line
	6100 4600 6100 5500
$Sheet
S 1600 7200 850  350 
U 53527009
F0 "Fuentes" 50
F1 "Fuentes.sch" 50
$EndSheet
Wire Wire Line
	7700 1050 7800 1050
Wire Wire Line
	7700 1150 7800 1150
Wire Wire Line
	7700 1250 7800 1250
Wire Wire Line
	7700 1350 7800 1350
Entry Wire Line
	7800 1050 7900 1150
Entry Wire Line
	7800 1150 7900 1250
Entry Wire Line
	7800 1250 7900 1350
Entry Wire Line
	7800 1350 7900 1450
Wire Bus Line
	7900 1150 7900 1450
$EndSCHEMATC
