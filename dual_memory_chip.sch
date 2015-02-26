v 20130925 2
C 44000 48500 1 0 0 W25Q64BSSIG.sym
{
T 45895 50100 5 10 1 1 0 0 1
refdes=U2
T 43995 48500 5 10 0 1 0 0 1
footprint=SO8M
}
C 44000 51200 1 0 0 23LCV1024.sym
{
T 45895 52800 5 10 1 1 0 0 1
refdes=U1
T 43995 51200 5 10 0 1 0 0 1
footprint=SO8
}
C 46400 52500 1 0 0 vcc-1.sym
C 46400 49800 1 0 0 vcc-1.sym
N 46400 49800 46600 49800 4
N 46600 52500 46400 52500 4
C 43700 51000 1 0 0 gnd-1.sym
C 43700 48300 1 0 0 gnd-1.sym
N 43800 48600 44000 48600 4
N 43800 51300 44000 51300 4
N 44000 52500 43800 52500 4
{
T 43700 52500 5 10 1 1 0 6 1
netname=RAM_/CS
}
N 44000 49800 43800 49800 4
{
T 43700 49800 5 10 1 1 0 6 1
netname=FLASH_/CS
}
N 44000 49400 43800 49400 4
{
T 43700 49400 5 10 1 1 0 6 1
netname=MISO
}
N 44000 49000 43800 49000 4
{
T 43700 49000 5 10 1 1 0 6 1
netname=FLASH_/WP/IO2
}
N 46400 48600 46600 48600 4
{
T 46700 48600 5 10 1 1 0 0 1
netname=MOSI
}
T 48100 52100 9 10 1 0 0 0 1
when /CS is high, SO is hi-z
N 46400 51300 46600 51300 4
{
T 46700 51300 5 10 1 1 0 0 1
netname=MOSI
}
N 46400 49000 46600 49000 4
{
T 46700 49000 5 10 1 1 0 0 1
netname=CLK
}
N 46400 51700 46600 51700 4
{
T 46700 51700 5 10 1 1 0 0 1
netname=CLK
}
N 46400 52100 46600 52100 4
{
T 46700 52100 5 10 1 1 0 0 1
netname=VBAT
}
N 46400 49400 46600 49400 4
{
T 46700 49400 5 10 1 1 0 0 1
netname=FLASH_/HOLD/IO3
}
N 44000 52100 43800 52100 4
{
T 43700 52100 5 10 1 1 0 6 1
netname=MISO
}
T 48100 51800 9 10 1 0 0 0 1
tie VBAT to VSS if not in use
T 48100 51500 9 10 1 0 0 0 1
MCU should check the mode first (SPI/SDI)
T 49900 48900 9 10 1 0 0 0 1
when /CS is high, DO or SI0-3 are hi-z
T 49700 48600 9 10 1 0 0 0 1
when /HOLD is low, DO is hi-z and signals on CLK and DI are ignored
B 48000 51100 9700 1900 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
L 51800 53000 51800 51100 3 0 0 0 -1 -1
T 53500 52600 9 15 1 0 0 0 1
23LC1024 diffs
T 52000 51900 9 10 1 0 0 0 2
NC -> SIO2
VBAT -> /HOLD/SIO3
T 51900 51400 9 10 1 0 0 0 2
pin 3 should not be left floating in SPI and SDI mode
-let MCU pull it high so the bus can recover if SQI is exited by accident
T 48800 52600 9 15 1 0 0 0 1
23LCV1024 notes
T 51000 49300 9 15 1 0 0 0 1
W25Q64BSSIG notes
B 49600 48300 6100 1400 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 43600 47100 9 10 1 0 0 0 1
clk, miso, mosi, hold/io3, wp/io2, cs1, cs2, pwr, bat, gnd
T 37200 50200 9 10 1 0 0 0 2
RAM: 2.5 - 5V
Flash: 2.7 - 3.6V
N 37400 49200 37600 49200 4
{
T 37700 49200 5 10 1 1 0 0 1
netname=FLASH_/CS
}
N 37500 51500 37700 51500 4
{
T 37800 51500 5 10 1 1 0 0 1
netname=RAM_/CS
}
N 37500 51800 37700 51800 4
{
T 37800 51800 5 10 1 1 0 0 1
netname=MISO
}
N 37500 51200 37700 51200 4
{
T 37800 51200 5 10 1 1 0 0 1
netname=VBAT
}
C 35800 50700 1 0 0 connector5-1.sym
{
T 37600 52200 5 10 0 0 0 0 1
device=CONNECTOR_5
T 35900 52400 5 10 1 1 0 0 1
refdes=J1
T 35800 50700 5 10 0 0 0 0 1
footprint=JUMPER5
}
C 35700 48100 1 0 0 connector5-1.sym
{
T 37500 49600 5 10 0 0 0 0 1
device=CONNECTOR_5
T 35800 49800 5 10 1 1 0 0 1
refdes=J2
T 35700 48100 5 10 0 0 0 0 1
footprint=JUMPER5
}
C 37500 50700 1 0 0 vcc-1.sym
N 37700 50700 37500 50700 4
N 37500 50700 37500 50900 4
C 37500 49400 1 0 0 gnd-1.sym
N 37600 49700 37400 49700 4
N 37400 49700 37400 49500 4
N 37400 48300 37600 48300 4
{
T 37700 48300 5 10 1 1 0 0 1
netname=MOSI
}
N 37400 48600 37600 48600 4
{
T 37700 48600 5 10 1 1 0 0 1
netname=CLK
}
N 37500 52100 37700 52100 4
{
T 37800 52100 5 10 1 1 0 0 1
netname=FLASH_/WP/IO2
}
N 37400 48900 37600 48900 4
{
T 37700 48900 5 10 1 1 0 0 1
netname=FLASH_/HOLD/IO3
}
N 36900 53900 36700 53900 4
{
T 36600 53900 5 10 1 1 0 6 1
netname=VBAT
}
C 36900 53400 1 0 0 JUMPER_3.sym
{
T 37445 54095 5 10 1 1 0 4 1
refdes=J?
}
C 37100 52900 1 0 0 gnd-1.sym
N 37200 53200 37200 53400 4
N 37200 54400 37200 54600 4
{
T 37200 54700 5 10 1 1 0 3 1
netname=FLASH_/HOLD/IO3
}