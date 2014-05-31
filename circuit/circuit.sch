EESchema Schematic File Version 2  date Sun 25 May 2014 16:00:10 BST
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
LIBS:BravinerComponentLibrary
LIBS:circuit-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "25 may 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 6350 4750
Wire Wire Line
	6250 4750 6350 4750
Connection ~ 3800 5150
Wire Wire Line
	3800 5050 3800 5400
Wire Wire Line
	3800 5400 6350 5400
Wire Wire Line
	6350 5400 6350 3800
Wire Wire Line
	5700 3550 6050 3550
Wire Wire Line
	3800 3150 3800 2850
Wire Wire Line
	3800 5150 3550 5150
Wire Wire Line
	3550 5150 3550 5250
Wire Wire Line
	3800 2850 3050 2850
Wire Wire Line
	3050 2850 3050 2800
Wire Wire Line
	6650 3550 6650 3400
Wire Wire Line
	6650 3400 5950 3400
Wire Wire Line
	5950 3400 5950 3450
Wire Wire Line
	5950 3450 5700 3450
Wire Wire Line
	5700 4750 5850 4750
$Comp
L LED D?
U 1 1 53820570
P 6050 4750
F 0 "D?" H 6050 4850 50  0000 C CNN
F 1 "LED" H 6050 4650 50  0000 C CNN
	1    6050 4750
	1    0    0    -1  
$EndComp
$Comp
L 3PIN_RESONATOR X?
U 1 1 53820502
P 6350 3550
F 0 "X?" H 6450 3350 60  0000 C CNN
F 1 "3PIN_RESONATOR" H 6350 3750 60  0000 C CNN
	1    6350 3550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5382037E
P 3050 2800
F 0 "#PWR?" H 3050 2890 20  0001 C CNN
F 1 "+5V" H 3050 2890 30  0000 C CNN
	1    3050 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 538202A8
P 3550 5250
F 0 "#PWR?" H 3550 5250 30  0001 C CNN
F 1 "GND" H 3550 5180 30  0001 C CNN
	1    3550 5250
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328-P IC?
U 1 1 5382024D
P 4700 3950
F 0 "IC?" H 4000 5200 50  0000 L BNN
F 1 "ATMEGA328-P" H 4950 2550 50  0000 L BNN
F 2 "DIL28" H 4100 2600 50  0001 C CNN
	1    4700 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
