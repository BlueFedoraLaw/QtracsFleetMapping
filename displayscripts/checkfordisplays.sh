#!/bin/bash

PROC=$(ps -e | grep "firefox")

# echo ${PROC:26}
TRUEPROC=${PROC:26}

while true; do
	bash ./displaycontrols.sh
	sleep 8h
done
