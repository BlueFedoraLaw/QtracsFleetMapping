This set of scripts will run a qtracs map that can be displayed on any tv or monitor. It will also run a national
dopplar radar map.

To set up the display scripts, make sure to run the setup.sh file. This will make sure everything is given the 
correct permissions.

Before starting the displays, make sure to edit the login information in the qtracschromelogin.py file.
A comment is in place to show you where to add the information.

Once the login info has been added, you can start the displays by running the checkfordisplays.sh file. This will
launch both browsers and eventually start the window manager that will flip back and forth for both browsers. If you 
do not need the weather map or have multiple displays and do not need the windowmanager, you can comment out the window
manager portion of the code in the displaycontrols.sh file.
