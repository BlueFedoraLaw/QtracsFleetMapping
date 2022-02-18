# checks for firefox display process
# if process is there, exit with 0 status
# if process is not there run the script that will initialize the displays
ps -afx > processes.txt

if ( grep "firefox" processes.txt ); then
	:
else
	bash init_displays.sh
fi
