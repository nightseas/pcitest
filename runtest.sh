#!/bin/bash

# Enable enable memory mapped transfers for PCIe endpoint, incase it's disabled by default.
setpci -s 02:00.0 COMMAND=0x02
setpci -s 02:00.0 COMMAND=0x02

# Test Xilinx KCU1500 card with dual x8 mode on a single x16 slot
sudo ./pcitest /sys/devices/pci0000\:00/0000\:00\:02.0/0000\:02\:00.0/resource0
sudo ./pcitest /sys/devices/pci0000\:00/0000\:00\:02.2/0000\:03\:00.0/resource0
