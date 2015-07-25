#!/bin/bash
clear
cd /var/mobile/Library/Preferences
if [ test -e /var/mobile/Library/Preferences/LXgame/name.lx ]; then
  ./gamestart.sh
else
  echo -e "ようこそ_LX-RPG_へ"
  mkdir LXgame
  cd LXgame
  sleep 2
  sbalert -t "名前を入力してください" -p > name.lx
  echo -e -n "あなたの所持金は\t"
  echo -e -n "500" > money.lx
  echo -e "Gです"
  echo -e -n "あなたのレベルは\tLv."
  echo -e -n "1" > level.lx
  echo -e "です"
  cp level.lx exp.lx
  sleep 2
  ./gamestart.sh
fi
