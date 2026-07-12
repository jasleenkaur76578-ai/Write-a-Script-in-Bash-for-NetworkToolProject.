#!/bin/bash

clear

echo "========================================="
echo "      NETWORK INFORMATION TOOL"
echo "========================================="

echo "Hostname:"
hostname

echo

echo "Operating System:"
grep PRETTY_NAME /etc/os-release

echo

echo "Kernel Version:"
uname -r

echo

echo "Local IP Address:"
hostname -I

echo

echo "MAC Address:"
ip link | grep ether

echo

echo "Default Gateway:"
ip route | grep default

echo

echo "DNS Server:"
grep nameserver /etc/resolv.conf

echo

echo "Internet Status:"
if ping -c 1 8.8.8.8 > /dev/null 2>&1
then
    echo "Connected"
else
    echo "Not Connected"
fi

echo

echo "Disk Usage:"
df -h /

echo

echo "Memory Usage:"
free -h

echo

echo "CPU Information:"
lscpu | grep "Model name"

echo

echo "========================================="
echo "Program Completed Successfully!"
echo "========================================="
