#!/bin/bash

# Bring down the eth0 interface
sudo ip link set eth0 down

# Set the new MAC address
sudo ip link set eth0 address aa:bb:cc:dd:ee:ff

# Bring up the eth0 interface
sudo ip link set eth0 up
