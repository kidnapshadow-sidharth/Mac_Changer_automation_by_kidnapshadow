Hello , this will help you change for changing the mac addresh in linux 
After download any script you need to set cronjob for this file 
command:
1. crontab -e      # open the crontab in edit mode
2. @reboot /path of where you download mac script   # add this line after edit your path and save it

then, open a new terminal to restart the cron services copy one by one code
command : 1. service cron start     #to start the service
2. systemctl enable cron.service
3. systemctl start cron.service
4. update-rc.d cron defaults

NOTE: if you want to change mac addresh of another network adapter , you need to change eth0 to your network adapter name 

some default command to check your current mac addresh
1. ifconfig
2. macchanger -s eth0

#kidnapshadow #thank
