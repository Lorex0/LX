#!/bin/bash
cd /var/mobile/Library/Preferences
if [ test -e /var/mobile/Library/Preferences/KRgame/name.kr ]
  gamestart.sh
else
  echo -e "Welcome to _KR-PG_"
  sleep 2
  sbalert -t "Plage imput you name" -p > name.kr
  gamestart.sh
fi
