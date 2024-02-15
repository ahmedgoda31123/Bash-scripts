#!/bin/bash

# Simple Ping Sweep Script
echo "Please enter the subnet: "
read SUBNET

for ip in $(seq 1 254); do
        ping -c 1 $SUBNET.$ip
done




