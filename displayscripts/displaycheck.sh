ps -afx > processes.txt

if ( grep "firefox" processes.txt ); then
	:
else
	bash checkfordisplays.sh
fi
