#!/bin/bash

export DISPLAY=:0
rm -rf ~/.cache/chromium
sleep 3
chromium-browser "https://monitoringpublic.solaredge.com/solaredge-web/p/site/public?name=Solenergi%20Eid%20VGS&locale=en_GB#/dashboard" --window-size=1280,1024 --start-fullscreen --kiosk --incognito --noerrdialogs --disable-translate --no-first-run --fast --fast-start --disable-infobars --disable-features=TranslateUI --disk-cache-dir=/dev/null  --password-store=basic
sleep 120
xdotool key ctrl+F5