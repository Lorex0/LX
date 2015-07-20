#!/bin/bash
clear
cd /var/mobile/Library/Preferences/KRgame/
echo -e "$nameさん、お帰りなさい"
sleep 2
sbalert -t "何をしますか？" -a "クエストに行く" -o "ショップに行く" -d "プロフィールを見る"
#クエストの戻り値は1
#ショップの戻り値は2
#プロフィールの戻り値は0
case $? in
  1 ) quest.sh
    ;;
  2 ) shop.sh
    ;;
  0 ) profile.sh
    ;;
esac
