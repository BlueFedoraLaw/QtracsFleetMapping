#!/bin/bash

WINDOWS=$(wmctrl -l)
SUB="NWS"

wmctrl -c "Fleet Mapping — Google Chrome"

python3 ./qtracschromelogin.py &
bash ./weatherdisplay.sh
sleep 2m
wmctrl -c "Services Portal | Omnitracs, LLC - Announcements - Google Chrome"

# comment out this line if you have multiple screens to display the 2 browsers
bash ./windowmanager.sh
