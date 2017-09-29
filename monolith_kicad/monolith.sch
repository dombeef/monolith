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
LIBS:ESP8266
LIBS:mpu-6050
LIBS:switches
LIBS:monolith-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
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
L CONN_01X06 P4
U 1 1 59912CF2
P 8150 2850
F 0 "P4" H 8150 3200 50  0000 C CNN
F 1 "L298N" H 8150 2500 50  0000 C CNN
F 2 "" H 8150 2850 50  0000 C CNN
F 3 "" H 8150 2850 50  0000 C CNN
	1    8150 2850
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 5991316B
P 3250 4350
F 0 "BT1" H 3350 4450 50  0000 L CNN
F 1 "Battery" H 3350 4350 50  0000 L CNN
F 2 "" V 3250 4410 50  0000 C CNN
F 3 "" V 3250 4410 50  0000 C CNN
	1    3250 4350
	1    0    0    -1  
$EndComp
$Comp
L LD1117S33TR U1
U 1 1 59913256
P 4250 3950
F 0 "U1" H 4250 4200 50  0000 C CNN
F 1 "LD1117S33TR" H 4250 4150 50  0000 C CNN
F 2 "SOT-223" H 4250 4050 50  0000 C CNN
F 3 "" H 4250 3950 50  0000 C CNN
	1    4250 3950
	1    0    0    -1  
$EndComp
Text Notes 8250 3150 0    63   ~ 0
VCC\nGND\n1A\n2A\n3B\n4B
$Comp
L ESP-12E U2
U 1 1 59912C8C
P 5800 3400
F 0 "U2" H 5800 3300 50  0000 C CNN
F 1 "ESP-12E" H 5800 3500 50  0000 C CNN
F 2 "" H 5800 3400 50  0001 C CNN
F 3 "" H 5800 3400 50  0001 C CNN
	1    5800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4150 3850 2600
Wire Wire Line
	3850 2600 7950 2600
Connection ~ 3850 3900
Wire Wire Line
	7950 2700 6850 2700
Wire Wire Line
	3250 4550 6850 4550
Wire Wire Line
	6700 3800 6700 5300
Connection ~ 4250 4550
Wire Wire Line
	6850 4550 6850 2700
Connection ~ 6700 4550
Connection ~ 3250 4150
Wire Wire Line
	7800 3000 7950 3000
Wire Wire Line
	7700 2900 7950 2900
Wire Wire Line
	7500 2800 7950 2800
$Comp
L CONN_01X03 P1
U 1 1 59914799
P 3100 3300
F 0 "P1" H 3100 3500 50  0000 C CNN
F 1 "WS2812" V 3200 3300 50  0000 C CNN
F 2 "" H 3100 3300 50  0000 C CNN
F 3 "" H 3100 3300 50  0000 C CNN
	1    3100 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 3200 3850 3200
Connection ~ 3850 3200
Wire Wire Line
	3300 3400 3700 3400
Connection ~ 3700 4550
$Comp
L CONN_01X08 P2
U 1 1 5991E759
P 4750 5600
F 0 "P2" H 4750 6050 50  0000 C CNN
F 1 "MPU6050" H 4750 5150 50  0000 C CNN
F 2 "" H 4750 5600 50  0000 C CNN
F 3 "" H 4750 5600 50  0000 C CNN
	1    4750 5600
	1    0    0    -1  
$EndComp
Text Notes 4800 6000 0    63   ~ 0
VCC\nGND\nSCL\nSDA\nXDA\nXCL\nADO\nINT
Wire Wire Line
	4250 4200 4250 5350
Wire Wire Line
	4250 5350 4550 5350
Wire Wire Line
	4550 5250 4550 5050
Wire Wire Line
	4550 5050 5050 5050
Wire Wire Line
	5050 5050 5050 6150
Wire Wire Line
	5050 6150 3100 6150
Wire Wire Line
	3100 6150 3100 4150
Connection ~ 3100 4150
Wire Wire Line
	3100 4150 3850 4150
Wire Wire Line
	4500 5450 4550 5450
Wire Wire Line
	4400 5550 4550 5550
Wire Wire Line
	4500 5450 4500 4850
Wire Wire Line
	4500 4850 6950 4850
Wire Wire Line
	6950 4850 6950 3300
Wire Wire Line
	6950 3300 6700 3300
Wire Wire Line
	6700 3500 7050 3500
Wire Wire Line
	7050 1850 7050 4750
Wire Wire Line
	7050 4750 4400 4750
Wire Wire Line
	4400 4750 4400 5550
Wire Wire Line
	6700 3400 7150 3400
Wire Wire Line
	7150 3400 7150 4650
Wire Wire Line
	7150 4650 4350 4650
Wire Wire Line
	4350 4650 4350 5950
Wire Wire Line
	4350 5950 4550 5950
Wire Wire Line
	4900 3500 4800 3500
Wire Wire Line
	4800 3500 4800 2450
Wire Wire Line
	4800 2450 7900 2450
Wire Wire Line
	7900 2450 7900 3100
Wire Wire Line
	7900 3100 7950 3100
Wire Wire Line
	7800 3000 7800 2350
Wire Wire Line
	7800 2350 4700 2350
Wire Wire Line
	4700 2350 4700 3600
Wire Wire Line
	4700 3600 4900 3600
Wire Wire Line
	4900 3700 4600 3700
Wire Wire Line
	4600 3700 4600 2250
Wire Wire Line
	4600 2250 7700 2250
Wire Wire Line
	7700 2250 7700 2900
Wire Wire Line
	6700 3700 7500 3700
Wire Wire Line
	7500 3700 7500 2800
$Comp
L CONN_01X06 P3
U 1 1 59967D01
P 7950 5050
F 0 "P3" H 7950 5400 50  0000 C CNN
F 1 "FTDI" H 7950 4650 50  0000 C CNN
F 2 "" H 7950 5050 50  0000 C CNN
F 3 "" H 7950 5050 50  0000 C CNN
	1    7950 5050
	1    0    0    -1  
$EndComp
Text Notes 8050 5350 0    63   ~ 0
DTR\nRX\nTX\nVC\nCTS\nGND
Wire Wire Line
	4750 3900 4650 3900
Wire Wire Line
	4750 3750 4750 3900
Wire Wire Line
	4750 3800 4900 3800
Wire Wire Line
	4900 3300 4550 3300
Wire Wire Line
	4550 3300 4550 3750
Wire Wire Line
	4550 3750 4750 3750
Connection ~ 4750 3800
$Comp
L SW_DIP_x01 SW1
U 1 1 5997975E
P 5050 1850
F 0 "SW1" H 5050 2000 50  0000 C CNN
F 1 "SW_DIP_x01" H 5050 1700 50  0000 C CNN
F 2 "" H 5050 1850 50  0000 C CNN
F 3 "" H 5050 1850 50  0000 C CNN
	1    5050 1850
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x01 SW2
U 1 1 59979863
P 6100 1850
F 0 "SW2" H 6100 2000 50  0000 C CNN
F 1 "SW_DIP_x01" H 6100 1700 50  0000 C CNN
F 2 "" H 6100 1850 50  0000 C CNN
F 3 "" H 6100 1850 50  0000 C CNN
	1    6100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3200 7250 3200
Wire Wire Line
	7250 3200 7250 4900
Wire Wire Line
	7250 4900 7750 4900
Wire Wire Line
	7750 5000 7350 5000
Wire Wire Line
	7350 5000 7350 3100
Wire Wire Line
	7350 3100 6700 3100
Wire Wire Line
	6700 5300 7750 5300
Wire Wire Line
	4900 3100 4500 3100
Wire Wire Line
	4500 3100 4500 1850
Wire Wire Line
	4500 1850 4750 1850
Wire Wire Line
	5350 1850 5800 1850
Wire Wire Line
	7050 1850 6350 1850
Connection ~ 7050 3500
Wire Wire Line
	3700 3400 3700 4700
Text Label 3750 4700 0    60   ~ 0
GND
Text GLabel 3600 4700 0    60   Input ~ 0
GND
Wire Wire Line
	3600 4700 3750 4700
Connection ~ 3700 4700
Text GLabel 5550 1650 0    60   Input ~ 0
GND
Wire Wire Line
	5550 1650 5550 1850
Connection ~ 5550 1850
Text GLabel 3550 1900 0    60   Input ~ 0
3.7vBAT
$Comp
L R 100k
U 1 1 59A72962
P 3850 1900
F 0 "100k" V 3930 1900 50  0000 C CNN
F 1 "R" V 3850 1900 50  0000 C CNN
F 2 "" V 3780 1900 50  0000 C CNN
F 3 "" H 3850 1900 50  0000 C CNN
	1    3850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 1900 3700 1900
Wire Wire Line
	4100 3200 4900 3200
$Comp
L R R?
U 1 1 59A73ABA
P 4100 2150
F 0 "R?" V 4180 2150 50  0000 C CNN
F 1 "R" V 4100 2150 50  0000 C CNN
F 2 "" V 4030 2150 50  0000 C CNN
F 3 "" H 4100 2150 50  0000 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3200 4100 2300
Wire Wire Line
	4100 2000 4100 1900
Wire Wire Line
	4100 1900 4000 1900
$EndSCHEMATC
