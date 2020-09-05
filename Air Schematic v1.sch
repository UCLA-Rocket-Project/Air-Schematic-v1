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
L SamacSys_Parts:ADXL375BCCZ Accelerometer1
U 1 1 5F349524
P 5200 2300
F 0 "Accelerometer1" H 6200 3281 50  0000 C CNN
F 1 "ADXL375BCCZ" H 6200 3190 50  0000 C CNN
F 2 "ADXL375BCCZ-pcb-part-libraries:CC-14-1" H 7050 2900 50  0001 L CNN
F 3 "" H 7050 2800 50  0001 L CNN
F 4 "ADXL375BCCZ Analog Devices, 3-Axis Accelerometer, I2C, Serial-3 Wire, Serial-4 Wire, Serial-SPI, 14-Pin LGA" H 7050 2700 50  0001 L CNN "Description"
F 5 "" H 7050 2600 50  0001 L CNN "Height"
F 6 "584-ADXL375BCCZ" H 7050 2500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Analog-Devices/ADXL375BCCZ?qs=S4ILP0tmc7Q%2Fd%2FHPWf9YpQ%3D%3D" H 7050 2400 50  0001 L CNN "Mouser Price/Stock"
F 8 "Analog Devices" H 7050 2300 50  0001 L CNN "Manufacturer_Name"
F 9 "ADXL375BCCZ" H 7050 2200 50  0001 L CNN "Manufacturer_Part_Number"
	1    5200 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F364D6C
P 3150 7500
F 0 "#PWR0101" H 3150 7250 50  0001 C CNN
F 1 "GND" H 3155 7327 50  0000 C CNN
F 2 "" H 3150 7500 50  0001 C CNN
F 3 "" H 3150 7500 50  0001 C CNN
	1    3150 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F366429
P 5000 2400
F 0 "#PWR0102" H 5000 2150 50  0001 C CNN
F 1 "GND" H 5005 2227 50  0000 C CNN
F 2 "" H 5000 2400 50  0001 C CNN
F 3 "" H 5000 2400 50  0001 C CNN
	1    5000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2400 5100 2400
Wire Wire Line
	2950 7500 3150 7500
Text Label 2100 1900 0    50   ~ 0
MCU
Text GLabel 6200 850  0    50   Input ~ 0
SCLK
Text GLabel 3250 1200 2    50   Input ~ 0
SCLK
Text GLabel 1450 7300 0    50   Input ~ 0
SCLK
Wire Wire Line
	3000 1200 3250 1200
$Comp
L ESP32-DEVKITC-32D:ESP32-DEVKITC-32D MCU1
U 1 1 5F33B8B0
P 2200 1900
F 0 "MCU1" H 2200 3067 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 2200 2976 50  0000 C CNN
F 2 "ESP32-DEVKITC-32D:MODULE_ESP32-DEVKITC-32D" H 2200 1900 50  0001 L BNN
F 3 "4" H 2200 1900 50  0001 L BNN
F 4 "Espressif Systems" H 2200 1900 50  0001 L BNN "Field4"
	1    2200 1900
	1    0    0    -1  
$EndComp
Text GLabel 3250 1100 2    50   Input ~ 0
SDA
Text GLabel 950  7500 0    50   Input ~ 0
SDA
Text GLabel 7400 2300 2    50   Input ~ 0
SDA
Text Notes 7150 6500 0    50   ~ 0
GENERAL:\n-Add radio (uart for rfd, spi for lora)\n-SD Clock goes where?\n-What is fastest signal speed?\n-Confirm MCU needs no caps - breakout board.\n-Check solderability of components, interrupt abilities, potentially replace\n-CHECK DATA SHEETS FOR PCB LAYOUT GUIDELINES
$Comp
L power:+3V3 #PWR0104
U 1 1 5F376D9C
P 1050 1000
F 0 "#PWR0104" H 1050 850 50  0001 C CNN
F 1 "+3V3" H 1065 1173 50  0000 C CNN
F 2 "" H 1050 1000 50  0001 C CNN
F 3 "" H 1050 1000 50  0001 C CNN
	1    1050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1000 1400 1000
Wire Wire Line
	3000 1100 3250 1100
Wire Wire Line
	7200 2300 7300 2300
Text Notes 6750 1350 0    50   ~ 0
Accelerometer:\n-Vs: 2-3.6V\n-VDDO: 1.7 - Vs\n-Add interrupt wiring\n-Connect CS pin to VDDIO\n-Alt Address to vddio or gnd
$Comp
L power:GND #PWR0105
U 1 1 5F395226
P 1750 7100
F 0 "#PWR0105" H 1750 6850 50  0001 C CNN
F 1 "GND" H 1755 6927 50  0000 C CNN
F 2 "" H 1750 7100 50  0001 C CNN
F 3 "" H 1750 7100 50  0001 C CNN
	1    1750 7100
	1    0    0    1   
$EndComp
$Comp
L MS561101BA03-50:MS561101BA03-50 Altimeter1
U 1 1 5F33E5F7
P 2350 7300
F 0 "Altimeter1" H 2350 7767 50  0000 C CNN
F 1 "MS561101BA03-50" H 2350 7676 50  0000 C CNN
F 2 "MS561101BA03-50:SON125P500X300X100-8N" H 2350 7300 50  0001 L BNN
F 3 "MS561101BA03-50" H 2350 7300 50  0001 L BNN
F 4 "Compliant" H 2350 7300 50  0001 L BNN "Field4"
	1    2350 7300
	1    0    0    -1  
$EndComp
Text Notes 3500 7050 0    50   ~ 0
Altimeter Power:\n-I2C logic is 80-100% VDD\n-VDD Range is 1.8-3.6V\n-Connect CSB to VDD or GND\n-(CSB defines last bit in i2c address)\n-10k pullup resistors on sda and sclk lines (to vdd)
Text Notes 500  700  0    50   ~ 0
Note: Dev board, not chip!\n-3v3 power supply, only use one power supply at once (will this be a problem for testing?)\n-Logic levels
Wire Wire Line
	1750 7200 1600 7200
Wire Wire Line
	1600 7200 1600 6700
Wire Wire Line
	2950 6700 2950 7100
$Comp
L Device:C 0.1uF1
U 1 1 5F3A3883
P 3150 7350
F 0 "0.1uF1" H 3265 7396 50  0000 L CNN
F 1 "C" H 3265 7305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3188 7200 50  0001 C CNN
F 3 "~" H 3150 7350 50  0001 C CNN
	1    3150 7350
	1    0    0    -1  
$EndComp
Connection ~ 3150 7500
Wire Wire Line
	2950 7100 3150 7100
Wire Wire Line
	3150 7100 3150 7200
Connection ~ 2950 7100
$Comp
L Device:R_Small_US 10k2
U 1 1 5F3A9E2E
P 1500 7200
F 0 "10k2" H 1568 7246 50  0000 L CNN
F 1 "R" H 1568 7155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1500 7200 50  0001 C CNN
F 3 "~" H 1500 7200 50  0001 C CNN
	1    1500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7100 1500 6700
Connection ~ 1600 6700
Wire Wire Line
	1500 6700 1600 6700
$Comp
L Device:R_Small_US 10k1
U 1 1 5F3AF5B2
P 1000 7400
F 0 "10k1" H 1068 7446 50  0000 L CNN
F 1 "R" H 1068 7355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1000 7400 50  0001 C CNN
F 3 "~" H 1000 7400 50  0001 C CNN
	1    1000 7400
	1    0    0    -1  
$EndComp
Connection ~ 1500 7300
Wire Wire Line
	1500 7300 1450 7300
Wire Wire Line
	1600 6700 2950 6700
Wire Wire Line
	950  7500 1000 7500
Wire Wire Line
	1000 7500 1750 7500
Wire Wire Line
	1000 7300 1000 6700
Wire Wire Line
	1000 6700 1500 6700
Connection ~ 1500 6700
Wire Wire Line
	1500 7300 1750 7300
Wire Wire Line
	5200 2600 5100 2600
Wire Wire Line
	5100 2600 5100 2400
Connection ~ 5100 2400
Wire Wire Line
	5100 2400 5000 2400
Wire Wire Line
	5200 2700 5100 2700
Wire Wire Line
	5100 2700 5100 2600
Connection ~ 5100 2600
$Comp
L Device:R_Small_US 10k3
U 1 1 5F3C2ABC
P 5850 1100
F 0 "10k3" H 5918 1146 50  0000 L CNN
F 1 "R" H 5918 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5850 1100 50  0001 C CNN
F 3 "~" H 5850 1100 50  0001 C CNN
	1    5850 1100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US 10k4
U 1 1 5F3C2AC2
P 7300 2200
F 0 "10k4" H 7368 2246 50  0000 L CNN
F 1 "R" H 7368 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7300 2200 50  0001 C CNN
F 3 "~" H 7300 2200 50  0001 C CNN
	1    7300 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F3C34E8
P 7200 2400
F 0 "#PWR0106" H 7200 2150 50  0001 C CNN
F 1 "GND" V 7205 2272 50  0000 R CNN
F 2 "" H 7200 2400 50  0001 C CNN
F 3 "" H 7200 2400 50  0001 C CNN
	1    7200 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 3400 4700 3400
Wire Wire Line
	4700 3400 4700 2300
Wire Wire Line
	6200 850  6200 1100
Wire Wire Line
	6200 1100 5950 1100
Connection ~ 6200 1100
Wire Wire Line
	6200 1100 6200 1500
Wire Wire Line
	5750 1100 5200 1100
Wire Wire Line
	5200 1100 5200 1600
Connection ~ 5200 2300
Connection ~ 7300 2300
Wire Wire Line
	7300 2300 7400 2300
Wire Wire Line
	7300 2100 7300 1600
Connection ~ 5200 1600
Wire Wire Line
	5200 1600 5200 2300
Wire Wire Line
	4700 2300 5200 2300
$Comp
L power:+3V3 #PWR0107
U 1 1 5F396255
P 3150 7100
F 0 "#PWR0107" H 3150 6950 50  0001 C CNN
F 1 "+3V3" H 3165 7273 50  0000 C CNN
F 2 "" H 3150 7100 50  0001 C CNN
F 3 "" H 3150 7100 50  0001 C CNN
	1    3150 7100
	1    0    0    -1  
$EndComp
Connection ~ 3150 7100
$Comp
L power:+3V3 #PWR0108
U 1 1 5F399C6C
P 4700 2300
F 0 "#PWR0108" H 4700 2150 50  0001 C CNN
F 1 "+3V3" H 4715 2473 50  0000 C CNN
F 2 "" H 4700 2300 50  0001 C CNN
F 3 "" H 4700 2300 50  0001 C CNN
	1    4700 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0109
U 1 1 5F39B9D7
P 4800 2800
F 0 "#PWR0109" H 4800 2650 50  0001 C CNN
F 1 "+3V3" H 4815 2973 50  0000 C CNN
F 2 "" H 4800 2800 50  0001 C CNN
F 3 "" H 4800 2800 50  0001 C CNN
	1    4800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2800 5200 2800
Text GLabel 3250 1300 2    50   Input ~ 0
TX
Text GLabel 3250 1400 2    50   Input ~ 0
RX
Text GLabel 3300 2500 2    50   Input ~ 0
CS
Text GLabel 3300 2600 2    50   Input ~ 0
MISO
Text GLabel 3300 2700 2    50   Input ~ 0
MOSI
Text GLabel 3300 2800 2    50   Input ~ 0
CLK
Wire Wire Line
	3000 1300 3250 1300
Wire Wire Line
	3000 1400 3250 1400
Wire Wire Line
	3300 2600 3000 2600
Wire Wire Line
	3000 2700 3300 2700
Wire Wire Line
	3000 2800 3300 2800
Wire Wire Line
	3000 2500 3300 2500
Text Notes 3450 1400 0    50   ~ 0
Serial
Text Notes 3600 2700 0    50   ~ 0
SPI
Wire Notes Line
	3800 2900 3200 2900
Wire Notes Line
	3200 2900 3200 2400
Wire Notes Line
	3200 2400 3800 2400
Wire Notes Line
	3800 2400 3800 2900
Wire Notes Line
	3200 1500 3750 1500
Wire Notes Line
	3750 1500 3750 1250
Wire Notes Line
	3750 1250 3200 1250
Wire Notes Line
	3200 1500 3200 1250
Connection ~ 1000 7500
Wire Wire Line
	7300 1600 5200 1600
Connection ~ 10250 3100
Wire Wire Line
	10250 2100 10400 2100
Wire Wire Line
	10250 2650 10250 3100
Connection ~ 10250 2100
Wire Wire Line
	10250 2350 10250 2100
$Comp
L Device:C 0.1uF2
U 1 1 5F3E0F9D
P 10250 2500
F 0 "0.1uF2" H 10365 2546 50  0000 L CNN
F 1 "C" H 10365 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10288 2350 50  0001 C CNN
F 3 "~" H 10250 2500 50  0001 C CNN
	1    10250 2500
	1    0    0    -1  
$EndComp
Connection ~ 10250 3200
Wire Wire Line
	10700 3200 10250 3200
Wire Wire Line
	10700 2650 10700 3200
Connection ~ 10100 1600
Wire Wire Line
	10700 1600 10700 2350
Wire Wire Line
	10100 1600 10700 1600
Wire Wire Line
	8800 1600 9050 1600
Connection ~ 8800 1600
Wire Wire Line
	8300 1600 8800 1600
Wire Wire Line
	8300 2300 8300 1600
Wire Wire Line
	9050 1600 10100 1600
Connection ~ 9050 1600
Wire Wire Line
	8800 2200 8800 1600
Wire Wire Line
	8300 2500 9050 2500
Connection ~ 8300 2500
Wire Wire Line
	8250 2500 8300 2500
Wire Wire Line
	8800 2400 8750 2400
Connection ~ 8800 2400
Wire Wire Line
	9050 2400 8800 2400
$Comp
L Device:R_Small_US 10k5
U 1 1 5F3BFA76
P 8300 2400
F 0 "10k5" H 8368 2446 50  0000 L CNN
F 1 "R" H 8368 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8300 2400 50  0001 C CNN
F 3 "~" H 8300 2400 50  0001 C CNN
	1    8300 2400
	1    0    0    -1  
$EndComp
Text GLabel 8250 2500 0    50   Input ~ 0
SDA
Text GLabel 8750 2400 0    50   Input ~ 0
SCLK
Wire Wire Line
	10100 2000 10250 2000
Connection ~ 10250 2000
Wire Wire Line
	10100 1600 10100 2000
Wire Wire Line
	9050 2300 9050 1600
$Comp
L Device:R_Small_US 10k6
U 1 1 5F3A99BA
P 8800 2300
F 0 "10k6" H 8868 2346 50  0000 L CNN
F 1 "R" H 8868 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8800 2300 50  0001 C CNN
F 3 "~" H 8800 2300 50  0001 C CNN
	1    8800 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C 0.1uF3
U 1 1 5F3A8529
P 10700 2500
F 0 "0.1uF3" H 10815 2546 50  0000 L CNN
F 1 "C" H 10815 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10738 2350 50  0001 C CNN
F 3 "~" H 10700 2500 50  0001 C CNN
	1    10700 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0110
U 1 1 5F3A4A8B
P 10400 2100
F 0 "#PWR0110" H 10400 1950 50  0001 C CNN
F 1 "+3V3" H 10415 2273 50  0000 C CNN
F 2 "" H 10400 2100 50  0001 C CNN
F 3 "" H 10400 2100 50  0001 C CNN
	1    10400 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0111
U 1 1 5F3A35B3
P 10250 2000
F 0 "#PWR0111" H 10250 1850 50  0001 C CNN
F 1 "+3V3" H 10265 2173 50  0000 C CNN
F 2 "" H 10250 2000 50  0001 C CNN
F 3 "" H 10250 2000 50  0001 C CNN
	1    10250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3100 10500 3100
$Comp
L power:GND #PWR0112
U 1 1 5F39F8F9
P 10250 3200
F 0 "#PWR0112" H 10250 2950 50  0001 C CNN
F 1 "GND" H 10255 3027 50  0000 C CNN
F 2 "" H 10250 3200 50  0001 C CNN
F 3 "" H 10250 3200 50  0001 C CNN
	1    10250 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F39E2A5
P 10500 3100
F 0 "#PWR0113" H 10500 2850 50  0001 C CNN
F 1 "GND" H 10505 2927 50  0000 C CNN
F 2 "" H 10500 3100 50  0001 C CNN
F 3 "" H 10500 3100 50  0001 C CNN
	1    10500 3100
	1    0    0    -1  
$EndComp
$Comp
L BMX160:BMX160 IMU1
U 1 1 5F39490B
P 9650 2600
F 0 "IMU1" H 9650 3467 50  0000 C CNN
F 1 "BMX160" H 9650 3376 50  0000 C CNN
F 2 "BMX160:PQFN50P250X300X100-14N" H 9650 2600 50  0001 L BNN
F 3 "Bosch" H 9650 2600 50  0001 L BNN
F 4 "1.2" H 9650 2600 50  0001 L BNN "Field4"
F 5 "IPC-7351B" H 9650 2600 50  0001 L BNN "Field5"
	1    9650 2600
	1    0    0    -1  
$EndComp
Connection ~ 4700 2300
$Comp
L power:+3V3 #PWR0114
U 1 1 5F3D0C80
P 3700 4300
F 0 "#PWR0114" H 3700 4150 50  0001 C CNN
F 1 "+3V3" H 3715 4473 50  0000 C CNN
F 2 "" H 3700 4300 50  0001 C CNN
F 3 "" H 3700 4300 50  0001 C CNN
	1    3700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F3D652A
P 3700 5500
F 0 "#PWR0115" H 3700 5250 50  0001 C CNN
F 1 "GND" H 3705 5327 50  0000 C CNN
F 2 "" H 3700 5500 50  0001 C CNN
F 3 "" H 3700 5500 50  0001 C CNN
	1    3700 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:C 4.7uF1
U 1 1 5F3DCB86
P 4200 4900
F 0 "4.7uF1" H 4315 4946 50  0000 L CNN
F 1 "C" H 4315 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4238 4750 50  0001 C CNN
F 3 "~" H 4200 4900 50  0001 C CNN
	1    4200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4300 4200 4300
Wire Wire Line
	4200 5500 3700 5500
Wire Wire Line
	4200 4300 4200 4750
Wire Wire Line
	4200 5050 4200 5500
Connection ~ 3700 4300
Wire Wire Line
	3700 4700 3900 4700
Wire Wire Line
	3900 4700 3900 3950
Wire Wire Line
	3900 3950 1350 3950
Wire Wire Line
	1350 3950 1350 4700
Wire Wire Line
	1350 4700 1500 4700
NoConn ~ 1500 4900
NoConn ~ 3700 4900
NoConn ~ 3700 5100
NoConn ~ 3700 5200
NoConn ~ 3700 5300
Text GLabel 1350 5300 0    50   Input ~ 0
SDA
Text GLabel 1350 5200 0    50   Input ~ 0
SCLK
Wire Wire Line
	1350 5200 1500 5200
Wire Wire Line
	1350 5300 1500 5300
Text GLabel 3700 4800 2    50   Input ~ 0
GPS_READY
Text GLabel 3000 1900 2    50   Input ~ 0
GPS_READY
Wire Wire Line
	3700 4500 3700 4400
Wire Wire Line
	3700 4400 3700 4300
Connection ~ 3700 4400
Connection ~ 3700 5500
$Comp
L CAM-M8Q-0:CAM-M8Q-0 GPS1
U 1 1 5F39FD2C
P 2600 4900
F 0 "GPS1" H 2600 5767 50  0000 C CNN
F 1 "CAM-M8Q-0" H 2600 5676 50  0000 C CNN
F 2 "CAM-M8Q-0:LCC100P960X1400X210-31N" H 2600 4900 50  0001 L BNN
F 3 "UBlox" H 2600 4900 50  0001 L BNN
	1    2600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2300 1150 2300
$Comp
L power:GND #PWR0103
U 1 1 5F366C96
P 1150 2300
F 0 "#PWR0103" H 1150 2050 50  0001 C CNN
F 1 "GND" H 1155 2127 50  0000 C CNN
F 2 "" H 1150 2300 50  0001 C CNN
F 3 "" H 1150 2300 50  0001 C CNN
	1    1150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F452594
P 9700 4150
F 0 "#PWR0116" H 9700 3900 50  0001 C CNN
F 1 "GND" H 9705 3977 50  0000 C CNN
F 2 "" H 9700 4150 50  0001 C CNN
F 3 "" H 9700 4150 50  0001 C CNN
	1    9700 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 5F4549F7
P 9700 4050
F 0 "#PWR0117" H 9700 3900 50  0001 C CNN
F 1 "+3V3" H 9715 4223 50  0000 C CNN
F 2 "" H 9700 4050 50  0001 C CNN
F 3 "" H 9700 4050 50  0001 C CNN
	1    9700 4050
	1    0    0    -1  
$EndComp
Text GLabel 9700 4450 0    50   Input ~ 0
TX
Text GLabel 9700 4550 0    50   Input ~ 0
RX
$Comp
L power:+3V3 #PWR01
U 1 1 5F470C0E
P 6400 4950
F 0 "#PWR01" H 6400 4800 50  0001 C CNN
F 1 "+3V3" H 6415 5123 50  0000 C CNN
F 2 "" H 6400 4950 50  0001 C CNN
F 3 "" H 6400 4950 50  0001 C CNN
	1    6400 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F473626
P 6400 5150
F 0 "#PWR02" H 6400 4900 50  0001 C CNN
F 1 "GND" H 6405 4977 50  0000 C CNN
F 2 "" H 6400 5150 50  0001 C CNN
F 3 "" H 6400 5150 50  0001 C CNN
	1    6400 5150
	1    0    0    -1  
$EndComp
Text GLabel 8100 4650 2    50   Input ~ 0
Dat0
Text GLabel 8100 4750 2    50   Input ~ 0
Dat1
Text GLabel 6800 4650 0    50   Input ~ 0
Dat2
Text GLabel 6800 4750 0    50   Input ~ 0
Dat3
Wire Wire Line
	6400 5150 6800 5150
Wire Wire Line
	6400 4950 6800 4950
Text GLabel 6800 5050 0    50   Input ~ 0
SDIOCLK?
Text GLabel 6800 4850 0    50   Input ~ 0
CMD
Text Notes 6450 5550 0    50   ~ 0
How to wire this thing... also. Pullup resistors?
Text GLabel 1400 1600 0    50   Input ~ 0
Dat2
Text GLabel 1400 1700 0    50   Input ~ 0
Dat3
Text GLabel 1400 1800 0    50   Input ~ 0
CMD
Text GLabel 1400 1900 0    50   Input ~ 0
Dat0
Text GLabel 1400 2000 0    50   Input ~ 0
Dat1
Text GLabel 2700 3550 0    50   Input ~ 0
SDIOCLK?
Text GLabel 3000 2000 2    50   Input ~ 0
IMU_READY
Text GLabel 9050 2800 0    50   Input ~ 0
IMU_READY
Text GLabel 7200 2700 2    50   Input ~ 0
ACCEL_READY
Text GLabel 3000 2100 2    50   Input ~ 0
ACCEL_READY
Text Notes 850  3050 0    50   ~ 0
Pinout Reference: https://randomnerdtutorials.com/esp32-pinout-reference-gpios/
$Comp
L SamacSys_Parts:47219-2001 SD1
U 1 1 5F4D7F0F
P 6800 4650
F 0 "SD1" H 7450 4915 50  0000 C CNN
F 1 "47219-2001" H 7450 4824 50  0000 C CNN
F 2 "SamacSys_Parts:472192001" H 7950 4750 50  0001 L CNN
F 3 "http://www.molex.com/molex/products/datasheet.jsp?part=active/0472192001_MEMORY_CARD_SOCKET.xml&channel=Products&Lang=en-US" H 7950 4650 50  0001 L CNN
F 4 "Molex 47219 Series 8 Way Horizontal Hinged Micro SD Memory Card Connector with Solder Termination" H 7950 4550 50  0001 L CNN "Description"
F 5 "" H 7950 4450 50  0001 L CNN "Height"
F 6 "538-47219-2001" H 7950 4350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Molex/47219-2001?qs=6kT3pPPHxnVaoXw6Dd7beQ%3D%3D" H 7950 4250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Molex" H 7950 4150 50  0001 L CNN "Manufacturer_Name"
F 9 "47219-2001" H 7950 4050 50  0001 L CNN "Manufacturer_Part_Number"
	1    6800 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5F4E851D
P 8100 5150
F 0 "#PWR03" H 8100 4900 50  0001 C CNN
F 1 "GND" H 8105 4977 50  0000 C CNN
F 2 "" H 8100 5150 50  0001 C CNN
F 3 "" H 8100 5150 50  0001 C CNN
	1    8100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 5050 8100 5150
Connection ~ 8100 5050
Connection ~ 8100 4950
Wire Wire Line
	8100 4950 8100 5050
Connection ~ 8100 5150
Wire Wire Line
	8100 4850 8100 4950
Text Notes 9750 5350 0    50   ~ 0
Check the footprint on these
Text GLabel 9700 5150 0    50   Input ~ 0
CLK
Text GLabel 9700 5050 0    50   Input ~ 0
MOSI
Text GLabel 9700 4950 0    50   Input ~ 0
MISO
Text GLabel 9700 4850 0    50   Input ~ 0
CS
$Comp
L SamacSys_Parts:TB001-500-04BE SPI1
U 1 1 5F541036
P 9700 4850
F 0 "SPI1" H 10328 4746 50  0000 L CNN
F 1 "TB001-500-04BE" H 10328 4655 50  0000 L CNN
F 2 "SamacSys_Parts:TB00150004BE" H 10350 4950 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TB001-500-04BE.pdf" H 10350 4850 50  0001 L CNN
F 4 "Fixed Terminal Blocks Terminal block, screw type, 5.00, horizontal, 4 poles, CUI Blue, slotted screw, PCB mount" H 10350 4750 50  0001 L CNN "Description"
F 5 "12.9" H 10350 4650 50  0001 L CNN "Height"
F 6 "490-TB001-500-04BE" H 10350 4550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB001-500-04BE?qs=vLWxofP3U2xFd1xqNcHXZA%3D%3D" H 10350 4450 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Devices" H 10350 4350 50  0001 L CNN "Manufacturer_Name"
F 9 "TB001-500-04BE" H 10350 4250 50  0001 L CNN "Manufacturer_Part_Number"
	1    9700 4850
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TB006-508-02BE UART1
U 1 1 5F5421F0
P 9700 4450
F 0 "UART1" H 10328 4446 50  0000 L CNN
F 1 "TB006-508-02BE" H 10328 4355 50  0000 L CNN
F 2 "SamacSys_Parts:TB00650802BE" H 10350 4550 50  0001 L CNN
F 3 "" H 10350 4450 50  0001 L CNN
F 4 "Fixed Terminal Blocks screw type, 5.08 , horizontal, 2 poles, CUI Blue, slotted screw, PCB mount" H 10350 4350 50  0001 L CNN "Description"
F 5 "10.4" H 10350 4250 50  0001 L CNN "Height"
F 6 "490-TB006-508-02BE" H 10350 4150 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-02BE?qs=vLWxofP3U2wEdOVV%2FaT04w%3D%3D" H 10350 4050 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Devices" H 10350 3950 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-02BE" H 10350 3850 50  0001 L CNN "Manufacturer_Part_Number"
	1    9700 4450
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:TB006-508-02BE PowerSupply1
U 1 1 5F54DCFB
P 9700 4050
F 0 "PowerSupply1" H 10328 4046 50  0000 L CNN
F 1 "TB006-508-02BE" H 10328 3955 50  0000 L CNN
F 2 "SamacSys_Parts:TB00650802BE" H 10350 4150 50  0001 L CNN
F 3 "" H 10350 4050 50  0001 L CNN
F 4 "Fixed Terminal Blocks screw type, 5.08 , horizontal, 2 poles, CUI Blue, slotted screw, PCB mount" H 10350 3950 50  0001 L CNN "Description"
F 5 "10.4" H 10350 3850 50  0001 L CNN "Height"
F 6 "490-TB006-508-02BE" H 10350 3750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/CUI-Devices/TB006-508-02BE?qs=vLWxofP3U2wEdOVV%2FaT04w%3D%3D" H 10350 3650 50  0001 L CNN "Mouser Price/Stock"
F 8 "CUI Devices" H 10350 3550 50  0001 L CNN "Manufacturer_Name"
F 9 "TB006-508-02BE" H 10350 3450 50  0001 L CNN "Manufacturer_Part_Number"
	1    9700 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
