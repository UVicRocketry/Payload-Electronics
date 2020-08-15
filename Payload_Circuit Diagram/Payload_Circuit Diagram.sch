EESchema Schematic File Version 4
EELAYER 30 0
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
L Motor~Driver:Pololu_MD21A MotorDriver1
U 1 1 5F36B0DB
P 5700 2950
F 0 "MotorDriver1" H 5675 3225 50  0000 C CNN
F 1 "Pololu_MD21A" H 5675 3134 50  0000 C CNN
F 2 "" H 5700 3250 50  0001 C CNN
F 3 "" H 5700 3250 50  0001 C CNN
	1    5700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3400 6050 3400
Wire Wire Line
	6400 3400 6400 3850
Wire Wire Line
	6400 2900 6400 3400
Connection ~ 6400 3400
$Comp
L power:+12V #PWR?
U 1 1 5F36EF37
P 9400 1950
F 0 "#PWR?" H 9400 1800 50  0001 C CNN
F 1 "+12V" H 9415 2123 50  0000 C CNN
F 2 "" H 9400 1950 50  0001 C CNN
F 3 "" H 9400 1950 50  0001 C CNN
	1    9400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3100 6250 3100
Wire Wire Line
	6250 3100 6250 3200
Wire Wire Line
	8300 2900 8300 2500
Wire Wire Line
	8300 2500 6550 2500
Wire Wire Line
	6250 2500 6250 2900
Wire Wire Line
	6250 2900 6050 2900
Wire Wire Line
	5300 3100 5150 3100
Wire Wire Line
	5150 2400 9400 2400
Wire Wire Line
	9400 1950 9400 2400
$Comp
L power:Earth #PWR?
U 1 1 5F3757EA
P 5800 3900
F 0 "#PWR?" H 5800 3650 50  0001 C CNN
F 1 "Earth" H 5800 3750 50  0001 C CNN
F 2 "" H 5800 3900 50  0001 C CNN
F 3 "~" H 5800 3900 50  0001 C CNN
	1    5800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3900 5800 3850
Wire Wire Line
	5800 3850 6400 3850
Connection ~ 9400 2400
Wire Wire Line
	9400 2400 9400 3200
Wire Wire Line
	5150 2400 5150 3100
$Comp
L Pump~Driver:PumpDriver PumpDriver1
U 1 1 5F3731B3
P 5800 4800
F 0 "PumpDriver1" H 5800 4385 50  0000 C CNN
F 1 "MPD-200A" H 5800 4476 50  0000 C CNN
F 2 "" H 5800 5200 50  0001 C CNN
F 3 "" H 5800 5200 50  0001 C CNN
	1    5800 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 3200 5300 3200
Wire Wire Line
	3150 2850 4200 2850
Wire Wire Line
	4200 3300 5300 3300
Wire Wire Line
	4200 3800 4200 3300
Wire Wire Line
	3150 3800 4200 3800
Wire Wire Line
	3150 3550 3150 3800
Wire Wire Line
	3150 2850 3150 3050
Wire Wire Line
	4200 3200 4200 2850
$Comp
L Motor:Motor_DC DCMotor
U 1 1 5F37219F
P 3150 3250
F 0 "DCMotor" H 3308 3246 50  0000 L CNN
F 1 "SparkFun ROB-12429" H 3308 3155 50  0000 L CNN
F 2 "" H 3150 3160 50  0001 C CNN
F 3 "~" H 3150 3160 50  0001 C CNN
	1    3150 3250
	1    0    0    -1  
$EndComp
Connection ~ 6550 2500
Wire Wire Line
	6550 2500 6250 2500
Wire Wire Line
	6150 5000 6550 5000
Wire Wire Line
	6550 2500 6550 5000
Wire Wire Line
	6150 4900 6650 4900
Wire Wire Line
	6650 3400 6650 4900
Wire Wire Line
	8100 2900 8300 2900
Wire Wire Line
	8100 3200 9400 3200
$Comp
L Arduino_Mini:Arduino_Mini IC1
U 1 1 5F362C73
P 6900 2900
F 0 "IC1" H 7500 3165 50  0000 C CNN
F 1 "Arduino_Mini" H 7500 3074 50  0000 C CNN
F 2 "DEV11114" H 7950 3000 50  0001 L CNN
F 3 "https://www.sparkfun.com/products/11114" H 7950 2900 50  0001 L CNN
F 4 "Arduino mini pro 3.3 volt 8Mhz" H 7950 2800 50  0001 L CNN "Description"
F 5 "5" H 7950 2700 50  0001 L CNN "Height"
F 6 "SparkFun" H 7950 2600 50  0001 L CNN "Manufacturer_Name"
F 7 "DEV-11114" H 7950 2500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "DEV-11114" H 7950 2400 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/dev-11114/sparkfun-electronics" H 7950 2300 50  0001 L CNN "Arrow Price/Stock"
F 10 "474-DEV-11114" H 7950 2200 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/SparkFun/DEV-11114?qs=WyAARYrbSnYSjjdqjebdgg%3D%3D" H 7950 2100 50  0001 L CNN "Mouser Price/Stock"
	1    6900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2900 6900 2900
Wire Wire Line
	6250 3200 6900 3200
Wire Wire Line
	6050 3300 6900 3300
Wire Wire Line
	6650 3400 6900 3400
Wire Wire Line
	6900 3500 6750 3500
Wire Wire Line
	6750 3500 6750 4800
Wire Wire Line
	6750 4800 6150 4800
Wire Wire Line
	4850 3400 4850 3850
Wire Wire Line
	4850 3850 5800 3850
Wire Wire Line
	4850 3400 5300 3400
Connection ~ 5800 3850
Wire Wire Line
	6150 4600 6300 4600
Wire Wire Line
	6300 4600 6300 5350
Wire Wire Line
	5200 5350 5200 4600
Wire Wire Line
	5200 4600 5450 4600
$Comp
L power:Earth #PWR?
U 1 1 5F3838FA
P 5800 5450
F 0 "#PWR?" H 5800 5200 50  0001 C CNN
F 1 "Earth" H 5800 5300 50  0001 C CNN
F 2 "" H 5800 5450 50  0001 C CNN
F 3 "~" H 5800 5450 50  0001 C CNN
	1    5800 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4900 4200 4900
Wire Wire Line
	4200 4900 4200 4450
Wire Wire Line
	4200 4450 3150 4450
Wire Wire Line
	3150 4450 3150 4650
Wire Wire Line
	5450 5000 4200 5000
Wire Wire Line
	4200 5000 4200 5400
Wire Wire Line
	4200 5400 3150 5400
Wire Wire Line
	3150 5400 3150 5150
$Comp
L Motor:Motor_AC PiezoelectricPump
U 1 1 5F3896F5
P 3150 4850
F 0 "PiezoelectricPump" H 3308 4846 50  0000 L CNN
F 1 "SDMP302/306" H 3308 4755 50  0000 L CNN
F 2 "" H 3150 4760 50  0001 C CNN
F 3 "~" H 3150 4760 50  0001 C CNN
	1    3150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5350 5800 5350
Wire Wire Line
	5800 5450 5800 5350
Connection ~ 5800 5350
Wire Wire Line
	5800 5350 6300 5350
$EndSCHEMATC
