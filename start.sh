#!/bin/bash
clear
cd /var/mobile/Library/Preferences/Shell
if [ -e /var/mobile/Library/Preferences/Shell/name.lx ]; then
  ./gamestart.sh
else
  echo "                     ようこそShell-gameへ
--------------------------------------------------------------"
  sleep 2
  sbalert -t "名前を入力してください" -p > name.lx
name=`cat name.lx`
  echo -e -n "あなたの名前は\t"
  echo -e "$nameです"
  echo -e -n "あなたの所持金は\t"
  echo -n "500" > money.lx
  echo -n "500"
  echo "Gです"
  echo -e -n "あなたのレベルは\tLv."
  echo -n "1" > level.lx
  echo -n "1"
  echo "です"
  cp level.lx exp.lx
  sleep 2
  ./gamestart.sh
fi
