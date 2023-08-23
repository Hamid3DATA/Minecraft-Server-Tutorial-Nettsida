#!/bin/bash

sudo apt install screen -y

sudo apt install unclutter -y

sudo apt install xdotool -y

wget https://raw.githubusercontent.com/Hamid3DATA/SolarEdge/main/Raspberry%20Pi%20Files/solaredge.sh && sudo chmod +x solaredge.sh
sleep 1
wget https://raw.githubusercontent.com/Hamid3DATA/SolarEdge/main/Raspberry%20Pi%20Files/scroll.sh && sudo chmod +x scroll.sh
sleep 1
wget https://raw.githubusercontent.com/Hamid3DATA/SolarEdge/main/Raspberry%20Pi%20Files/macro.sh && sudo chmod +x macro.sh
sleep 1
wget https://raw.githubusercontent.com/Hamid3DATA/SolarEdge/main/Raspberry%20Pi%20Files/refreshpage.sh && sudo chmod +x refreshpage.sh
sleep 1
{ crontab -l -u pi; echo '@reboot sleep 10;(. ~/.profile; /usr/bin/screen -dmS SolarEdge ~/solaredge.sh)'; } | crontab -u pi -
sleep 1
{ crontab -l -u pi; echo '@reboot sleep 120;(. ~/.profile; /usr/bin/screen -dmS Scroll ~/scroll.sh)'; } | crontab -u pi -
sleep 1
{ crontab -l -u pi; echo '@reboot sleep 140;(. ~/.profile; /usr/bin/screen -dmS Macro ~/macro.sh)'; } | crontab -u pi -
sleep 1
{ crontab -l -u pi; echo '0 * * * * (. ~/.profile; /usr/bin/screen -dmS RefreshPage ~/refreshpage.sh)'; } | crontab -u pi -
