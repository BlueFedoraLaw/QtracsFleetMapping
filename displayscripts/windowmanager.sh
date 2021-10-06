#!/bin/bash

# close the Omnitracs pop up window
wmctrl -c "Services Portal | Omnitracs, LLC - Announcements - Google Chrome"

# swap between the two browsers using a while loop
while true ;
do
	wmctrl -a "Fleet Mapping — Google Chrome"
	sleep 30s
	wmctrl -a "NWS Radar — Mozilla Firefox"
	sleep 30s
done
