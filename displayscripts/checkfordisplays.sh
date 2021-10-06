#!/bin/bash

##########################################
# old code, may remove later if I go a
# different direction with automation
#PROC=$(ps -e | grep "firefox")
#
# echo ${PROC:26}
#TRUEPROC=${PROC:26}
############################################

# star the loop that will run the dislpays
# the current processes will be handled by the 
# displaycontrols.sh script
# every 8 hours new displays will be launched
while true; do
	bash ./displaycontrols.sh
	sleep 8h
done
