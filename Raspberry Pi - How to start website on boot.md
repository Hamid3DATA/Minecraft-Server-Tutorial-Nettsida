# Everything you need to do

[SolarEdge Eid VGS sida](https://monitoringpublic.solaredge.com/solaredge-web/p/site/public?name=Solenergi%20Eid%20VGS&locale=en_GB#/dashboard)



## Things to install
```
sudo apt install screen
```
```
sudo apt install unclutter
```
```
sudo apt install xdotool
```



## Files/Scripts in raspberry Pi


### solaredge.sh
```
#!/bin/bash

export DISPLAY=:0
chromium-browser "https://monitoringpublic.solaredge.com/solaredge-web/p/site/public?name=Solenergi%20Eid%20VGS&locale=en_GB#/dashboard" --window-size=1280,1024 --start-fullscreen --kiosk --incognito --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-features=TranslateUI --disk-cache-dir=/dev/null  --password-store=basic
```
 
 
### macro.sh
```
#!/bin/bash

export DISPLAY=:0
xdotool mousemove 526 478
xdotool keydown  ctrl
xdotool click --repeat 6 4
xdotool keyup ctrl
sleep 3
xdotool click --repeat 6 5
sleep 1

while :
do
        xdotool mousemove 77 103 click 1
        sleep 60
        xdotool mousemove 142 103 click 1
        sleep 60
        xdotool mousemove 214 103 click 1
        sleep 60
done
```


### refreshpage.sh
```
#!/bin/bash

export DISPLAY=:0
xdotool key ctrl+F5
```



## Make files executable
```
sudo chmod +x solaredge.sh
```
```
sudo chmod +x macro.sh
```
```
sudo chmod +x refreshpage.sh
```



## Crontab


### To open crontab
```
crontab -e
```


### In crontab
```
@reboot sleep 10;(. ~/.profile; /usr/bin/screen -dmS SolarEdge ~/solaredge.sh)
```
```
@reboot sleep 150;(. ~/.profile; /usr/bin/screen -dmS Macro ~/macro.sh)
```
```
0 * * * * (. ~/.profile; /usr/bin/screen -dmS RefreshPage ~/refreshpage.sh)
```
