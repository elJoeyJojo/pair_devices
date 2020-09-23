#!/bin/bash

mac_add=$(grep $1 device_temp.txt | awk '{print $1}')
sudo sed -i '/\['$2'\]/,/ble/ s/ble_mac=/ble_mac='$mac_add'/' /etc/test.conf
sudo sed -i '\/['$3'\]/,/active/ s/active_devices=/active_devices='$3'/' /etc/test.conf
