#!/bin/bash

# keeping variables for now, may delete later
#WINDOWS=$(wmctrl -l)
#SUB="NWS"

# close the current fleet mapping browser 
wmctrl -c "Fleet Mapping — Google Chrome"

# run the scripts that will start a new qtracs display, weather display
python3 ./qtracschromelogin.py &
bash ./weatherdisplay.sh
sleep 2m

# comment out these lines if you have multiple screens to display the 2 browsers
# start the window manager script
bash ./windowmanager.sh
