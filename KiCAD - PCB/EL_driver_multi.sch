EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr User 12505 9349
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
Wire Wire Line
	1000 700  1300 700 
Wire Wire Line
	1300 700  1300 800 
Text Label 1000 700  0    10   ~ 0
GND
Wire Wire Line
	7900 1250 7900 1150
Text Label 7900 1250 0    10   ~ 0
GND
Wire Wire Line
	6300 950  6300 1250
Wire Wire Line
	6000 1250 6000 1150
Text Label 6000 1250 0    10   ~ 0
GND
Wire Wire Line
	350  1750 350  1850
Wire Wire Line
	350  2050 350  1850
Connection ~ 350  1850
Text Label 350  1750 0    10   ~ 0
GND
Wire Wire Line
	1250 4850 950  4850
Wire Wire Line
	950  4850 950  5050
Wire Wire Line
	1250 4650 950  4650
Wire Wire Line
	950  4650 950  4850
Connection ~ 950  4850
Text Label 1250 4850 0    10   ~ 0
GND
Wire Wire Line
	6250 3250 6250 3450
Text Label 6250 3250 0    10   ~ 0
GND
Wire Wire Line
	9300 1250 9300 1150
Text Label 9300 1250 0    10   ~ 0
GND
Wire Wire Line
	1000 400  1200 400 
Text Label 1100 400  0    70   ~ 0
D+
Wire Wire Line
	4650 4650 4250 4650
Text Label 4450 4650 0    70   ~ 0
D+
Wire Wire Line
	1000 500  1200 500 
Text Label 1100 500  0    70   ~ 0
D-
Wire Wire Line
	4250 4550 4650 4550
Text Label 4450 4550 0    70   ~ 0
D-
Wire Wire Line
	1300 300  1000 300 
Text Label 1300 300  0    10   ~ 0
VBUS
Wire Wire Line
	6000 850  6000 750 
Wire Wire Line
	6000 750  5800 750 
Connection ~ 6000 750 
Wire Wire Line
	750  1850 750  1750
Wire Wire Line
	750  1850 1250 1850
Wire Wire Line
	1250 1850 1250 1950
Connection ~ 750  1850
Text Label 950  1850 0    70   ~ 0
~RESET
Wire Wire Line
	1250 2250 850  2250
Wire Wire Line
	850  2250 850  2150
Wire Wire Line
	1250 2450 850  2450
Wire Wire Line
	850  2450 850  2250
Connection ~ 850  2250
Text Label 1250 2250 0    10   ~ 0
3.3V
Wire Wire Line
	7700 -250 7700 350 
Wire Wire Line
	7700 750  7700 550 
Wire Wire Line
	7700 550  8800 550 
Wire Wire Line
	7700 750  7900 750 
Wire Wire Line
	7900 750  7900 850 
Connection ~ 7700 750 
Connection ~ 7700 550 
Text Label 7700 -250 0    10   ~ 0
3.3V
Wire Wire Line
	9300 -250 9300 850 
Text Label 9300 -250 0    10   ~ 0
3.3V
Wire Wire Line
	4250 2050 4650 2050
Text Label 4350 2050 0    70   ~ 0
D1_A0_PA02
Wire Wire Line
	5850 2950 6250 2950
Wire Wire Line
	1250 2550 850  2550
Wire Wire Line
	850  2550 850  2750
Wire Wire Line
	4250 2950 5450 2950
Wire Wire Line
	4250 2750 4850 2750
Text Label 4350 2750 0    70   ~ 0
D0_A4_PA08_SDA
Wire Wire Line
	4750 2450 4250 2450
Text Label 4350 2450 0    70   ~ 0
D4_A2_PA06_TXD_MOSI
Wire Wire Line
	4250 2550 4750 2550
Text Label 4350 2550 0    70   ~ 0
D3_A3_PA07_RXD_SCK
Wire Wire Line
	4850 2850 4250 2850
Text Label 4350 2850 0    70   ~ 0
D2_A1_PA09_SCL_MISO
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND01
U 1 0 8DA2BB24
P 1300 900
F 0 "#GND01" H 1300 900 50  0001 C CNN
F 1 "GND" H 1200 800 59  0000 L BNN
F 2 "" H 1300 900 50  0001 C CNN
F 3 "" H 1300 900 50  0001 C CNN
	1    1300 900 
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND012
U 1 0 8C4C494A
P 7900 1350
F 0 "#GND012" H 7900 1350 50  0001 C CNN
F 1 "GND" H 7800 1250 59  0000 L BNN
F 2 "" H 7900 1350 50  0001 C CNN
F 3 "" H 7900 1350 50  0001 C CNN
	1    7900 1350
	-1   0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:FRAME_A_L #FRAME1
U 1 0 CC96BE83
P 550 8300
F 0 "#FRAME1" H 550 8300 50  0001 C CNN
F 1 "FRAME_A_L" H 550 8300 50  0001 C CNN
F 2 "" H 550 8300 50  0001 C CNN
F 3 "" H 550 8300 50  0001 C CNN
	1    550  8300
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND011
U 1 0 5518330F
P 6300 1350
F 0 "#GND011" H 6300 1350 50  0001 C CNN
F 1 "GND" H 6200 1250 59  0000 L BNN
F 2 "" H 6300 1350 50  0001 C CNN
F 3 "" H 6300 1350 50  0001 C CNN
	1    6300 1350
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:CAP_CERAMIC0805-NOOUTLINE C8
U 1 0 EC6A4D83
P 7900 1050
F 0 "C8" V 7810 1099 50  0000 C CNN
F 1 "10uF" V 7990 1099 50  0000 C CNN
F 2 "Trinket M0 rev D:0805-NO" H 7900 1050 50  0001 C CNN
F 3 "" H 7900 1050 50  0001 C CNN
	1    7900 1050
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:RESISTOR_0603_NOOUT R4
U 1 0 30FCCEAE
P 8800 750
F 0 "R4" H 8800 850 50  0000 C CNN
F 1 "10K" H 8800 750 40  0000 C CNB
F 2 "Trinket M0 rev D:0603-NO" H 8800 750 50  0001 C CNN
F 3 "" H 8800 750 50  0001 C CNN
	1    8800 750 
	0    -1   -1   0   
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:LED0603_NOOUTLINE PWR1
U 1 0 A7B6F5DA
P 8800 1150
F 0 "PWR1" H 8750 1325 42  0000 C CNN
F 1 "green" H 8750 1040 42  0000 C CNN
F 2 "Trinket M0 rev D:CHIPLED_0603_NOOUTLINE" H 8800 1150 50  0001 C CNN
F 3 "" H 8800 1150 50  0001 C CNN
	1    8800 1150
	0    1    1    0   
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND06
U 1 0 F6847280
P 8800 1350
F 0 "#GND06" H 8800 1350 50  0001 C CNN
F 1 "GND" H 8700 1250 59  0000 L BNN
F 2 "" H 8800 1350 50  0001 C CNN
F 3 "" H 8800 1350 50  0001 C CNN
	1    8800 1350
	-1   0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:CAP_CERAMIC0805-NOOUTLINE C1
U 1 0 E7D47EA7
P 6000 1050
F 0 "C1" V 5910 1099 50  0000 C CNN
F 1 "10uF" V 6090 1099 50  0000 C CNN
F 2 "Trinket M0 rev D:0805-NO" H 6000 1050 50  0001 C CNN
F 3 "" H 6000 1050 50  0001 C CNN
	1    6000 1050
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND03
U 1 0 21137572
P 6000 1350
F 0 "#GND03" H 6000 1350 50  0001 C CNN
F 1 "GND" H 5900 1250 59  0000 L BNN
F 2 "" H 6000 1350 50  0001 C CNN
F 3 "" H 6000 1350 50  0001 C CNN
	1    6000 1350
	-1   0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:USB_MICRO_20329_V2 CN1
U 1 0 9CAEAE19
P 600 500
F 0 "CN1" H 200 840 42  0000 L BNN
F 1 "4U#20329" H 200 100 42  0000 L BNN
F 2 "Trinket M0 rev D:4UCONN_20329_V2" H 600 500 50  0001 C CNN
F 3 "" H 600 500 50  0001 C CNN
	1    600  500 
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:VBUS #U$02
U 1 0 87B7DF34
P 1300 200
F 0 "#U$02" H 1300 200 50  0001 C CNN
F 1 "VBUS" H 1240 240 42  0000 L BNN
F 2 "" H 1300 200 50  0001 C CNN
F 3 "" H 1300 200 50  0001 C CNN
	1    1300 200 
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND014
U 1 0 B9C9B342
P 350 2150
F 0 "#GND014" H 350 2150 50  0001 C CNN
F 1 "GND" H 250 2050 59  0000 L BNN
F 2 "" H 350 2150 50  0001 C CNN
F 3 "" H 350 2150 50  0001 C CNN
	1    350  2150
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:SWITCH_TACT_SMT4.6X2.8 Q2
U 1 0 F6118E1B
P 550 1750
F 0 "Q2" H 450 2000 42  0000 L BNN
F 1 "reset" H 450 1550 42  0000 L BNN
F 2 "Trinket M0 rev D:BTN_KMR2_4.6X2.8" H 550 1750 50  0001 C CNN
F 3 "" H 550 1750 50  0001 C CNN
	1    550  1750
	-1   0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:ATSAMD21E IC3
U 1 0 B686635D
P 2850 3450
F 0 "IC3" H 1450 1750 59  0000 L BNN
F 1 "ATSAMD21E" H 1650 5250 59  0000 L BNN
F 2 "Trinket M0 rev D:QFN32_5MM" H 2850 3450 50  0001 C CNN
F 3 "" H 2850 3450 50  0001 C CNN
	1    2850 3450
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:3.3V #U$018
U 1 0 5210CFB4
P 850 2050
F 0 "#U$018" H 850 2050 50  0001 C CNN
F 1 "3.3V" H 790 2090 42  0000 L BNN
F 2 "" H 850 2050 50  0001 C CNN
F 3 "" H 850 2050 50  0001 C CNN
	1    850  2050
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND018
U 1 0 195191A6
P 950 5150
F 0 "#GND018" H 950 5150 50  0001 C CNN
F 1 "GND" H 850 5050 59  0000 L BNN
F 2 "" H 950 5150 50  0001 C CNN
F 3 "" H 950 5150 50  0001 C CNN
	1    950  5150
	-1   0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:3.3V #U$016
U 1 0 44B01CF5
P 7700 -350
F 0 "#U$016" H 7700 -350 50  0001 C CNN
F 1 "3.3V" H 7640 -310 42  0000 L BNN
F 2 "" H 7700 -350 50  0001 C CNN
F 3 "" H 7700 -350 50  0001 C CNN
	1    7700 -350
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:LED0603_NOOUTLINE L1
U 1 0 7944E536
P 6250 3150
F 0 "L1" H 6200 3325 42  0000 C CNN
F 1 "red" H 6200 3040 42  0000 C CNN
F 2 "Trinket M0 rev D:CHIPLED_0603_NOOUTLINE" H 6250 3150 50  0001 C CNN
F 3 "" H 6250 3150 50  0001 C CNN
	1    6250 3150
	0    1    1    0   
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:RESISTOR_0603_NOOUT R1
U 1 0 495DB300
P 5650 2950
F 0 "R1" H 5650 3050 50  0000 C CNN
F 1 "1.5K" H 5650 2950 40  0000 C CNB
F 2 "Trinket M0 rev D:0603-NO" H 5650 2950 50  0001 C CNN
F 3 "" H 5650 2950 50  0001 C CNN
	1    5650 2950
	-1   0    0    1   
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND04
U 1 0 12C122FD
P 6250 3650
F 0 "#GND04" H 6250 3650 50  0001 C CNN
F 1 "GND" H 6150 3550 59  0000 L BNN
F 2 "" H 6250 3650 50  0001 C CNN
F 3 "" H 6250 3650 50  0001 C CNN
	1    6250 3650
	-1   0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:CAP_CERAMIC0603_NO C2
U 1 0 AC671DB5
P 9300 1050
F 0 "C2" V 9210 1099 50  0000 C CNN
F 1 "1uF" V 9390 1099 50  0000 C CNN
F 2 "Trinket M0 rev D:0603-NO" H 9300 1050 50  0001 C CNN
F 3 "" H 9300 1050 50  0001 C CNN
	1    9300 1050
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:3.3V #U$017
U 1 0 29AF302F
P 9300 -350
F 0 "#U$017" H 9300 -350 50  0001 C CNN
F 1 "3.3V" H 9240 -310 42  0000 L BNN
F 2 "" H 9300 -350 50  0001 C CNN
F 3 "" H 9300 -350 50  0001 C CNN
	1    9300 -350
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND05
U 1 0 5B6A58CA
P 9300 1350
F 0 "#GND05" H 9300 1350 50  0001 C CNN
F 1 "GND" H 9200 1250 59  0000 L BNN
F 2 "" H 9300 1350 50  0001 C CNN
F 3 "" H 9300 1350 50  0001 C CNN
	1    9300 1350
	-1   0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:CAP_CERAMIC0603_NO C3
U 1 0 ECDD94AD
P 850 2950
F 0 "C3" V 760 2999 50  0000 C CNN
F 1 "1uF" V 940 2999 50  0000 C CNN
F 2 "Trinket M0 rev D:0603-NO" H 850 2950 50  0001 C CNN
F 3 "" H 850 2950 50  0001 C CNN
	1    850  2950
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND07
U 1 0 C2693486
P 850 3150
F 0 "#GND07" H 850 3150 50  0001 C CNN
F 1 "GND" H 750 3050 59  0000 L BNN
F 2 "" H 850 3150 50  0001 C CNN
F 3 "" H 850 3150 50  0001 C CNN
	1    850  3150
	1    0    0    -1  
$EndComp
Text Notes 8100 1050 0    59   ~ 0
Very bright 0603~\nUse 10K
$Comp
L EL_multi:LT3468 U2
U 1 1 5BA86369
P 1500 8200
F 0 "U2" H 1525 8525 50  0000 C CNN
F 1 "LT3468" H 1525 8434 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1850 8450 50  0001 C CNN
F 3 "" H 1850 8450 50  0001 C CNN
	1    1500 8200
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND0101
U 1 0 5BA864A4
P 700 8550
F 0 "#GND0101" H 700 8550 50  0001 C CNN
F 1 "GND" H 600 8450 59  0000 L BNN
F 2 "" H 700 8550 50  0001 C CNN
F 3 "" H 700 8550 50  0001 C CNN
	1    700  8550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1050 8200 700  8200
Wire Wire Line
	700  8200 700  8400
Wire Wire Line
	4250 3650 5450 3650
Text Label 4400 3650 0    50   ~ 0
PA16_CHARGE_CTRL
Wire Wire Line
	2000 8300 3050 8300
Text Label 2100 8300 0    50   ~ 0
PA16_CHARGE_CTRL
Wire Wire Line
	2000 8100 2050 8100
Wire Wire Line
	2200 8100 2200 7800
$Comp
L pspice:DIODE D1
U 1 1 5BA8B560
P 450 8200
F 0 "D1" V 550 8500 50  0000 R CNN
F 1 "B0540W" V 450 8600 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 450 8200 50  0001 C CNN
F 3 "" H 450 8200 50  0001 C CNN
	1    450  8200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	450  8400 700  8400
Connection ~ 700  8400
Wire Wire Line
	700  8400 700  8450
Wire Wire Line
	1050 8100 950  8100
Wire Wire Line
	700  8100 700  8000
Wire Wire Line
	700  8000 450  8000
Wire Wire Line
	1100 7800 950  7800
Wire Wire Line
	950  7800 950  8100
Connection ~ 950  8100
Wire Wire Line
	950  8100 700  8100
Wire Wire Line
	1500 7800 2050 7800
Wire Wire Line
	2050 7800 2050 8100
Connection ~ 2050 8100
Wire Wire Line
	2050 8100 2200 8100
$Comp
L EL_multi:ATB3225 TR1
U 1 1 5BA9B92E
P 1300 7400
F 0 "TR1" V 1346 7159 50  0000 R CNN
F 1 "ATB3225" V 1255 7159 50  0000 R CNN
F 2 "EL_driver:ATB3225" H 1300 7700 50  0001 C CNN
F 3 "" H 1300 7700 50  0001 C CNN
	1    1300 7400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 7600 1500 7800
Wire Wire Line
	1100 7600 1100 7800
$Comp
L EL_multi:MMBD5004S D4
U 1 1 5BAAB9FD
P 1100 6800
F 0 "D4" V 1146 6888 50  0000 L CNN
F 1 "MMBD5004S" V 1055 6888 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1100 6800 50  0001 C CNN
F 3 "" H 1100 6800 50  0001 C CNN
	1    1100 6800
	0    -1   -1   0   
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND0102
U 1 0 5BAAD9FC
P 1950 7250
F 0 "#GND0102" H 1950 7250 50  0001 C CNN
F 1 "GND" H 1850 7150 59  0000 L BNN
F 2 "" H 1950 7250 50  0001 C CNN
F 3 "" H 1950 7250 50  0001 C CNN
	1    1950 7250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1950 7150 1950 7050
Wire Wire Line
	1950 7050 1500 7050
Wire Wire Line
	1500 7050 1500 7200
Wire Wire Line
	1100 7200 1100 7100
$Comp
L Trinket_M0_rev_D-eagle-import:CAP_CERAMIC0603_NO C4
U 1 0 5BAB19CE
P 1500 6450
F 0 "C4" V 1410 6499 50  0000 C CNN
F 1 "2.2uF" V 1590 6499 50  0000 C CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 1500 6450 50  0001 C CNN
F 3 "" H 1500 6450 50  0001 C CNN
	1    1500 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 6450 1950 6450
Wire Wire Line
	1950 6450 1950 7050
Connection ~ 1950 7050
Wire Wire Line
	1400 6450 1100 6450
Wire Wire Line
	1100 6450 1100 6500
Wire Wire Line
	1100 6450 1100 6100
Wire Wire Line
	1100 6100 1350 6100
Connection ~ 1100 6450
Text Label 1150 6100 0    50   ~ 0
HV_SUPPLY
$Comp
L Trinket_M0_rev_D-eagle-import:CAP_CERAMIC0603_NO C5
U 1 0 5BAB865D
P 2500 7700
F 0 "C5" V 2410 7749 50  0000 C CNN
F 1 "6.3uF" V 2590 7749 50  0000 C CNN
F 2 "Trinket M0 rev D:0603-NO" H 2500 7700 50  0001 C CNN
F 3 "" H 2500 7700 50  0001 C CNN
	1    2500 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7800 2500 8100
Wire Wire Line
	2500 8100 2200 8100
Connection ~ 2200 8100
Wire Wire Line
	2500 7500 2500 7050
Wire Wire Line
	2500 7050 1950 7050
$Comp
L Trinket_M0_rev_D-eagle-import:RESISTOR_0603_NOOUT R2
U 1 0 5BABDDCD
P 6600 5100
F 0 "R2" H 6600 5200 50  0000 C CNN
F 1 "10M" H 6600 5100 40  0000 C CNB
F 2 "Trinket M0 rev D:0603-NO" H 6600 5100 50  0001 C CNN
F 3 "" H 6600 5100 50  0001 C CNN
	1    6600 5100
	0    -1   -1   0   
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:RESISTOR_0603_NOOUT R3
U 1 0 5BABDEB9
P 6600 5700
F 0 "R3" H 6600 5800 50  0000 C CNN
F 1 "100K" H 6600 5700 40  0000 C CNB
F 2 "Trinket M0 rev D:0603-NO" H 6600 5700 50  0001 C CNN
F 3 "" H 6600 5700 50  0001 C CNN
	1    6600 5700
	0    -1   -1   0   
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND0103
U 1 0 5BAC0854
P 6600 6150
F 0 "#GND0103" H 6600 6150 50  0001 C CNN
F 1 "GND" H 6500 6050 59  0000 L BNN
F 2 "" H 6600 6150 50  0001 C CNN
F 3 "" H 6600 6150 50  0001 C CNN
	1    6600 6150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6600 6050 6600 6000
Wire Wire Line
	6600 5500 6600 5400
Wire Wire Line
	6600 4900 6600 4550
Wire Wire Line
	6600 4550 6900 4550
Text Label 6700 4550 0    50   ~ 0
HV_SUPPLY
Wire Wire Line
	6600 5400 6850 5400
Connection ~ 6600 5400
Wire Wire Line
	6600 5400 6600 5300
Text Label 6750 5400 0    50   ~ 0
D1_A0_PA02
$Comp
L Trinket_M0_rev_D-eagle-import:CAP_CERAMIC0603_NO C6
U 1 0 5BACB3EF
P 6850 5750
F 0 "C6" V 6760 5799 50  0000 C CNN
F 1 "100pF" V 6940 5799 50  0000 C CNN
F 2 "Trinket M0 rev D:0603-NO" H 6850 5750 50  0001 C CNN
F 3 "" H 6850 5750 50  0001 C CNN
	1    6850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5850 6850 6000
Wire Wire Line
	6850 6000 6600 6000
Connection ~ 6600 6000
Wire Wire Line
	6600 6000 6600 5900
Wire Wire Line
	6850 5400 6850 5550
Connection ~ 6850 5400
Wire Wire Line
	6850 5400 6900 5400
$Comp
L EL_multi:HV513 U1
U 1 1 5BAE1836
P 7200 7250
F 0 "U1" H 7200 7975 50  0000 C CNN
F 1 "HV513" H 7200 7884 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 6950 7450 50  0001 C CNN
F 3 "" H 6950 7450 50  0001 C CNN
	1    7200 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 6750 7800 6750
Wire Wire Line
	7800 6750 7800 6850
Wire Wire Line
	7800 6850 7650 6850
Text Label 7700 6750 0    50   ~ 0
HV_SUPPLY
Wire Wire Line
	7650 7750 7750 7750
Wire Wire Line
	7750 7750 7750 7850
Wire Wire Line
	7750 7850 7650 7850
Wire Wire Line
	7750 7850 7750 8050
Wire Wire Line
	7750 8050 7200 8050
Wire Wire Line
	6650 8050 6650 7750
Wire Wire Line
	6650 7750 6750 7750
Connection ~ 7750 7850
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND0104
U 1 0 5BAEAF8E
P 7200 8200
F 0 "#GND0104" H 7200 8200 50  0001 C CNN
F 1 "GND" H 7100 8100 59  0000 L BNN
F 2 "" H 7200 8200 50  0001 C CNN
F 3 "" H 7200 8200 50  0001 C CNN
	1    7200 8200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 8100 7200 8050
Connection ~ 7200 8050
Wire Wire Line
	7200 8050 6650 8050
Text Label 5800 7650 0    50   ~ 0
D4_A2_PA06_TXD_MOSI
Wire Wire Line
	5800 7650 6750 7650
Text Label 5800 7250 0    50   ~ 0
D3_A3_PA07_RXD_SCK
Wire Wire Line
	5800 7250 6750 7250
Text Label 5800 7350 0    50   ~ 0
D0_A4_PA08_SDA
Wire Wire Line
	5800 7350 6750 7350
$Comp
L EL_multi:AP2204K-3.3 U3
U 1 1 5BB1AA60
P 7050 850
F 0 "U3" H 7050 1215 50  0000 C CNN
F 1 "AP2204K-3.3" H 7050 1124 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7050 850 50  0001 C CNN
F 3 "" H 7050 850 50  0001 C CNN
	1    7050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 750  7700 750 
Wire Wire Line
	6650 950  6300 950 
Wire Wire Line
	6650 850  6550 850 
Wire Wire Line
	6550 850  6550 750 
Wire Wire Line
	6550 750  6650 750 
Connection ~ 6550 750 
$Comp
L EL_multi:AP2204K-5.0 U4
U 1 1 5BB2BDC7
P 7100 2350
F 0 "U4" H 7100 2715 50  0000 C CNN
F 1 "AP2204K-5.0" H 7100 2624 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7100 2050 50  0001 C CNN
F 3 "" H 7100 2050 50  0001 C CNN
	1    7100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2250 8100 2250
Wire Wire Line
	8100 2250 8100 1950
Text Label 8100 1950 0    50   ~ 0
5.0V
$Comp
L Trinket_M0_rev_D-eagle-import:CAP_CERAMIC0805-NOOUTLINE C7
U 1 0 5BB332A1
P 8100 2550
F 0 "C7" V 8010 2599 50  0000 C CNN
F 1 "10uF" V 8190 2599 50  0000 C CNN
F 2 "Trinket M0 rev D:0805-NO" H 8100 2550 50  0001 C CNN
F 3 "" H 8100 2550 50  0001 C CNN
	1    8100 2550
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND0105
U 1 0 5BB3330B
P 8100 2850
F 0 "#GND0105" H 8100 2850 50  0001 C CNN
F 1 "GND" H 8000 2750 59  0000 L BNN
F 2 "" H 8100 2850 50  0001 C CNN
F 3 "" H 8100 2850 50  0001 C CNN
	1    8100 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8100 2250 8100 2350
Connection ~ 8100 2250
Wire Wire Line
	8100 2650 8100 2700
Wire Wire Line
	6700 2350 6600 2350
Wire Wire Line
	6600 2350 6600 2250
Wire Wire Line
	6600 2250 6700 2250
Wire Wire Line
	5800 750  5800 2250
Wire Wire Line
	5800 2250 6600 2250
Connection ~ 6600 2250
Wire Wire Line
	6700 2450 6700 2700
Wire Wire Line
	6700 2700 8100 2700
Connection ~ 8100 2700
Wire Wire Line
	8100 2700 8100 2750
Wire Wire Line
	6750 6850 6200 6850
Text Label 6200 6850 0    50   ~ 0
5.0V
Text Label 8500 3450 0    50   ~ 0
D3_A3_PA07_RXD_SCK
Text Label 8500 3650 0    50   ~ 0
D4_A2_PA06_TXD_MOSI
Wire Wire Line
	6000 750  6550 750 
Text Label 2200 7800 0    50   ~ 0
VBAT
Text Label 5900 750  0    50   ~ 0
VBAT
$Comp
L Trinket_M0_rev_D-eagle-import:FRAME_A_L #FRAME2
U 1 0 5BBD8A58
P 3500 8150
F 0 "#FRAME2" H 3500 8150 50  0001 C CNN
F 1 "FRAME_A_L" H 3500 8150 50  0001 C CNN
F 2 "" H 3500 8150 50  0001 C CNN
F 3 "" H 3500 8150 50  0001 C CNN
	1    3500 8150
	1    0    0    -1  
$EndComp
$Comp
L EL_multi:LT3468 U6
U 1 1 5BBD8A5E
P 4450 8050
F 0 "U6" H 4475 8375 50  0000 C CNN
F 1 "LT3468" H 4475 8284 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4800 8300 50  0001 C CNN
F 3 "" H 4800 8300 50  0001 C CNN
	1    4450 8050
	1    0    0    -1  
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND0108
U 1 0 5BBD8A65
P 3650 8400
F 0 "#GND0108" H 3650 8400 50  0001 C CNN
F 1 "GND" H 3550 8300 59  0000 L BNN
F 2 "" H 3650 8400 50  0001 C CNN
F 3 "" H 3650 8400 50  0001 C CNN
	1    3650 8400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 8050 3650 8050
Wire Wire Line
	3650 8050 3650 8250
Wire Wire Line
	4950 8150 6000 8150
Text Label 5050 8150 0    50   ~ 0
PA16_CHARGE_CTRL
Wire Wire Line
	4950 7950 5000 7950
Wire Wire Line
	5150 7950 5150 7650
$Comp
L pspice:DIODE D2
U 1 1 5BBD8A71
P 3400 8050
F 0 "D2" V 3500 8350 50  0000 R CNN
F 1 "B0540W" V 3400 8450 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 3400 8050 50  0001 C CNN
F 3 "" H 3400 8050 50  0001 C CNN
	1    3400 8050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 8250 3650 8250
Connection ~ 3650 8250
Wire Wire Line
	3650 8250 3650 8300
Wire Wire Line
	4000 7950 3900 7950
Wire Wire Line
	3650 7950 3650 7850
Wire Wire Line
	3650 7850 3400 7850
Wire Wire Line
	4050 7650 3900 7650
Wire Wire Line
	3900 7650 3900 7950
Connection ~ 3900 7950
Wire Wire Line
	3900 7950 3650 7950
Wire Wire Line
	4450 7650 5000 7650
Wire Wire Line
	5000 7650 5000 7950
Connection ~ 5000 7950
Wire Wire Line
	5000 7950 5150 7950
$Comp
L EL_multi:ATB3225 TR2
U 1 1 5BBD8A86
P 4250 7250
F 0 "TR2" V 4296 7009 50  0000 R CNN
F 1 "ATB3225" V 4205 7009 50  0000 R CNN
F 2 "EL_driver:ATB3225" H 4250 7550 50  0001 C CNN
F 3 "" H 4250 7550 50  0001 C CNN
	1    4250 7250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4450 7450 4450 7650
Wire Wire Line
	4050 7450 4050 7650
$Comp
L EL_multi:MMBD5004S D3
U 1 1 5BBD8A8F
P 4050 6650
F 0 "D3" V 4096 6738 50  0000 L CNN
F 1 "MMBD5004S" V 4005 6738 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4050 6650 50  0001 C CNN
F 3 "" H 4050 6650 50  0001 C CNN
	1    4050 6650
	0    -1   -1   0   
$EndComp
$Comp
L Trinket_M0_rev_D-eagle-import:GND #GND0109
U 1 0 5BBD8A96
P 4900 7100
F 0 "#GND0109" H 4900 7100 50  0001 C CNN
F 1 "GND" H 4800 7000 59  0000 L BNN
F 2 "" H 4900 7100 50  0001 C CNN
F 3 "" H 4900 7100 50  0001 C CNN
	1    4900 7100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 7000 4900 6900
Wire Wire Line
	4900 6900 4450 6900
Wire Wire Line
	4450 6900 4450 7050
Wire Wire Line
	4050 7050 4050 6950
Connection ~ 4900 6900
$Comp
L Trinket_M0_rev_D-eagle-import:CAP_CERAMIC0603_NO C9
U 1 0 5BBD8AA2
P 5450 7550
F 0 "C9" V 5360 7599 50  0000 C CNN
F 1 "6.3uF" V 5540 7599 50  0000 C CNN
F 2 "Trinket M0 rev D:0603-NO" H 5450 7550 50  0001 C CNN
F 3 "" H 5450 7550 50  0001 C CNN
	1    5450 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 7650 5450 7950
Wire Wire Line
	5450 7950 5150 7950
Connection ~ 5150 7950
Wire Wire Line
	5450 7350 5450 6900
Wire Wire Line
	5450 6900 4900 6900
Text Label 5150 7650 0    50   ~ 0
VBAT
Wire Wire Line
	4050 6350 4050 6200
Wire Wire Line
	4050 6200 4100 6200
Text Label 4100 6200 0    50   ~ 0
HV_SUPPLY
Wire Wire Line
	7650 6950 7950 6950
Wire Wire Line
	7650 7050 7950 7050
Wire Wire Line
	7650 7150 7950 7150
Wire Wire Line
	7650 7250 7950 7250
Wire Wire Line
	7650 7350 7950 7350
Wire Wire Line
	7650 7450 7950 7450
Wire Wire Line
	7650 7550 7950 7550
Wire Wire Line
	7650 7650 7950 7650
Text Label 7950 7650 0    50   ~ 0
HV1
Text Label 7950 7550 0    50   ~ 0
HV2
Text Label 7950 7450 0    50   ~ 0
HV3
Text Label 7950 7350 0    50   ~ 0
HV4
Text Label 7950 7250 0    50   ~ 0
HV5
Text Label 7950 7150 0    50   ~ 0
HV6
Text Label 7950 7050 0    50   ~ 0
HV7
Text Label 7950 6950 0    50   ~ 0
HV8
$Comp
L Connector:Conn_01x20_Female J1
U 1 1 5BCBD1E8
P 11650 8050
F 0 "J1" H 11677 8026 50  0000 L CNN
F 1 "Conn_01x20_Female" H 11677 7935 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x20_P1.27mm_Vertical" H 11650 8050 50  0001 C CNN
F 3 "~" H 11650 8050 50  0001 C CNN
	1    11650 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 7150 11450 7150
Wire Wire Line
	11450 7250 10900 7250
Wire Wire Line
	10900 7350 11450 7350
Wire Wire Line
	11450 7450 10900 7450
Wire Wire Line
	10900 7550 11450 7550
Wire Wire Line
	11450 7650 10900 7650
Wire Wire Line
	10900 7750 11450 7750
Wire Wire Line
	10900 7850 11450 7850
Wire Wire Line
	10900 7950 11450 7950
Wire Wire Line
	10900 8050 11450 8050
Wire Wire Line
	10900 8250 11450 8250
Wire Wire Line
	10900 8150 11450 8150
Wire Wire Line
	10900 8350 11450 8350
Wire Wire Line
	10900 8450 11450 8450
Wire Wire Line
	10900 8550 11450 8550
Wire Wire Line
	10900 8650 11450 8650
Wire Wire Line
	10900 8750 11450 8750
Wire Wire Line
	11450 8850 10900 8850
Wire Wire Line
	10900 8950 11450 8950
Wire Wire Line
	10900 9050 11450 9050
$Comp
L Connector:Conn_01x20_Female J2
U 1 1 5BD830BC
P 11900 6050
F 0 "J2" H 11927 6026 50  0000 L CNN
F 1 "Conn_01x20_Female" H 11927 5935 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x20_P1.27mm_Vertical" H 11900 6050 50  0001 C CNN
F 3 "~" H 11900 6050 50  0001 C CNN
	1    11900 6050
	1    0    0    -1  
$EndComp
NoConn ~ 6750 6750
NoConn ~ 6750 6950
NoConn ~ 6750 7050
NoConn ~ 6750 7150
NoConn ~ 6750 7450
NoConn ~ 6750 7550
NoConn ~ 6750 7850
NoConn ~ 4250 6650
NoConn ~ 1300 6800
NoConn ~ 1050 8300
$Comp
L EL_multi:HV507 U5
U 1 1 5BF3756C
P 10000 4250
F 0 "U5" H 10175 6515 50  0000 C CNN
F 1 "HV507" H 10175 6424 50  0000 C CNN
F 2 "EL_driver:QFP-96_14x20_Pitch0.8mm" H 10000 4250 50  0001 C CNN
F 3 "" H 10000 4250 50  0001 C CNN
	1    10000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3900 8750 3900
Text Label 8750 3900 0    50   ~ 0
GND
Wire Wire Line
	9450 3800 8750 3800
Text Label 8750 3800 0    50   ~ 0
5.0V
Wire Wire Line
	10900 4750 11300 4750
Wire Wire Line
	11300 4750 11300 4850
Wire Wire Line
	11300 4850 10900 4850
Wire Wire Line
	10900 5000 11300 5000
Text Label 11200 4750 0    50   ~ 0
HV_SUPPLY
Text Label 11300 5000 0    50   ~ 0
GND
Wire Wire Line
	8500 3450 9450 3450
Wire Wire Line
	9450 3650 8500 3650
Text Label 8500 3550 0    50   ~ 0
D0_A4_PA08_SDA
Wire Wire Line
	9450 3550 8500 3550
Wire Wire Line
	9450 3250 9050 3250
Wire Wire Line
	9050 3250 9050 3150
Wire Wire Line
	9050 3150 9450 3150
Text Label 9050 3150 0    50   ~ 0
5.0V
Wire Wire Line
	9450 3350 9050 3350
Wire Wire Line
	9050 3350 9050 3250
Connection ~ 9050 3250
Wire Wire Line
	10900 5150 11700 5150
Wire Wire Line
	10900 5250 11700 5250
Wire Wire Line
	10900 5350 11700 5350
Wire Wire Line
	10900 5450 11700 5450
Wire Wire Line
	10900 5550 11700 5550
Wire Wire Line
	10900 5650 11700 5650
Wire Wire Line
	10900 5950 11700 5950
Wire Wire Line
	10900 6050 11700 6050
Wire Wire Line
	10900 6150 11700 6150
Wire Wire Line
	10900 6250 11700 6250
Wire Wire Line
	10900 6350 11700 6350
Wire Wire Line
	10900 6450 11700 6450
Wire Wire Line
	10900 6550 11700 6550
Wire Wire Line
	10900 6650 11700 6650
Wire Wire Line
	10900 6750 11700 6750
Wire Wire Line
	10900 6850 11700 6850
Wire Wire Line
	10900 6950 11700 6950
Wire Wire Line
	10900 7050 11700 7050
Text Label 11100 5950 0    50   ~ 0
HV1
Text Label 11100 6050 0    50   ~ 0
HV2
Text Label 11100 6150 0    50   ~ 0
HV3
Text Label 11100 6250 0    50   ~ 0
HV4
Text Label 11100 6450 0    50   ~ 0
HV6
Text Label 11100 6350 0    50   ~ 0
HV5
Text Label 11100 6550 0    50   ~ 0
HV7
Text Label 11100 6650 0    50   ~ 0
HV8
Wire Wire Line
	11700 5850 10900 5850
Wire Wire Line
	10900 5750 11700 5750
$Comp
L Connector:Conn_01x24_Female J3
U 1 1 5C0E154B
P 11500 3350
F 0 "J3" H 11527 3326 50  0000 L CNN
F 1 "Conn_01x24_Female" H 11527 3235 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x24_P1.27mm_Vertical" H 11500 3350 50  0001 C CNN
F 3 "~" H 11500 3350 50  0001 C CNN
	1    11500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 2250 11300 2250
Wire Wire Line
	10900 2350 11300 2350
Wire Wire Line
	10900 2450 11300 2450
Wire Wire Line
	10900 2550 11300 2550
Wire Wire Line
	10900 2650 11300 2650
Wire Wire Line
	10900 2750 11300 2750
Wire Wire Line
	10900 2850 11300 2850
Wire Wire Line
	10900 2950 11300 2950
Wire Wire Line
	10900 3050 11300 3050
Wire Wire Line
	10900 3150 11300 3150
Wire Wire Line
	10900 3250 11300 3250
Wire Wire Line
	10900 3350 11300 3350
Wire Wire Line
	10900 3450 11300 3450
Wire Wire Line
	10900 3550 11300 3550
Wire Wire Line
	10900 3650 11300 3650
Wire Wire Line
	10900 3750 11300 3750
Wire Wire Line
	10900 3850 11300 3850
Wire Wire Line
	10900 3950 11300 3950
Wire Wire Line
	10900 4050 11300 4050
Wire Wire Line
	10900 4150 11300 4150
Wire Wire Line
	10900 4250 11300 4250
Wire Wire Line
	10900 4350 11300 4350
Wire Wire Line
	10900 4450 11300 4450
Wire Wire Line
	10900 4550 11300 4550
$Comp
L Connector:TestPoint TP2
U 1 1 5C211472
P 4250 5050
F 0 "TP2" V 4204 5238 50  0000 L CNN
F 1 "TestPoint" V 4300 5350 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4450 5050 50  0001 C CNN
F 3 "~" H 4450 5050 50  0001 C CNN
	1    4250 5050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 5C2116E9
P 4250 4950
F 0 "TP1" V 4204 5138 50  0000 L CNN
F 1 "TestPoint" V 4150 5250 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4450 4950 50  0001 C CNN
F 3 "~" H 4450 4950 50  0001 C CNN
	1    4250 4950
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5C211F12
P 6250 3450
F 0 "TP3" V 6204 3638 50  0000 L CNN
F 1 "TestPoint" V 6150 3750 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6450 3450 50  0001 C CNN
F 3 "~" H 6450 3450 50  0001 C CNN
	1    6250 3450
	0    1    1    0   
$EndComp
Connection ~ 6250 3450
Wire Wire Line
	6250 3450 6250 3550
$Comp
L Connector:TestPoint TP4
U 1 1 5C2124E1
P 7700 350
F 0 "TP4" V 7654 538 50  0000 L CNN
F 1 "TestPoint" V 7600 650 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 7900 350 50  0001 C CNN
F 3 "~" H 7900 350 50  0001 C CNN
	1    7700 350 
	0    1    1    0   
$EndComp
Connection ~ 7700 350 
Wire Wire Line
	7700 350  7700 550 
Text Notes 7000 5750 0    50   ~ 0
Capacitor not needed for stable operation
$EndSCHEMATC
