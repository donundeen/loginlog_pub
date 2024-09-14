#!/bin/bash

#sudo /usr/bin/killall logkeys
/usr/local/bin/logkeys  --start --no-func-keys --no-timestamps -m /home/pi/loginlog/barcodes/mymap.map --output - | /home/pi/loginlog/barcodes/proces_scan.py
