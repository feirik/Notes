# Config Raspberry Pi 4 with simulated OT programs, PLC and HMI operations

1. Flash SD-card with recommended PIOS

2. Preset Wifi and credentials in PIOS imager

3. Download programs and scripts: https://github.com/feirik/PyModbusDevices https://github.com/feirik/PyIEC104Devices https://github.com/feirik/Notes

4. Download matplotlib dependency: sudo apt install python3-matplotlib

5. Copy scripts to where you want it, such as: cp Notes/resources/scripts/* .

6. Generate an OT MAC address using get_PLC_MAC.sh

7. Edit the MAC address in set_pios_MAC.sh with the new OT MAC address

8. Create start_HMI.sh or start_PLC.sh script. Use --host <PLC IP> and -p 502/2404 for both HMI and PLC. For start_HMI.sh, cd to HMI location to run python3 main.py with a direct path due to asset picture location. Add sleep 10 in start_PLC.sh for startup on reboot.

9. Add cronjobs on reboot using crontab -e: @reboot /bin/bash /home/<user>/set_pios_MAC.sh (do the same for start_PLC.sh to have the PLC server program start on reboot)

10. Disable Bluetooth and Wifi, clean up Wifi in /etc/NetworkManager/system-connections/<Wifi> if needed, do history -c

11. Edit eth0 cabled connection IPv4 with static address of chosing

12. Reboot and test that the Raspberry PIs work as intended using start_HMI.sh and start_PLC.sh scripts