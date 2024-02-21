#!/bin/bash

# Display OUI options
echo "Select the OUI for the MAC address:"
echo "1. Siemens (000BA3)"
echo "2. Schneider (000C81)"
echo "3. ABB (001B45)"
echo "4. Rockwell Automation (E49069)"
read -p "Enter your choice (1-4): " choice

# Set the OUI based on user input
case $choice in
  1)
    OUI="00:0b:a3"
    ;;
  2)
    OUI="00:0c:81"
    ;;
  3)
    OUI="00:1b:45"
    ;;
  4)
    OUI="e4:90:69"
    ;;
  *)
    echo "Invalid choice. Exiting."
    exit 1
    ;;
esac

# Generate the random part of the MAC address
RANDOM_PART=$(openssl rand -hex 3 | sed 's/\(..\)/\1:/g; s/:$//')

# Combine the OUI and the random part
MAC_ADDRESS="$OUI:$RANDOM_PART"

# Output the MAC address
echo "Generated MAC Address: $MAC_ADDRESS"
