#!/bin/bash
. ./config.sh
#config.shに書かれてる変数を読み込み
clear
cd /var/mobile/Library/Preferences/Shell/
#ゲームディレクトリに移動
echo -e "$nameさん、お帰りなさい"
#挨拶
sleep 2
#2秒間待つ
sbalert -t "何をしますか？" -a "クエストに行く" -o "ショップに行く" -d "プロフィールを見る"
#クエストの戻り値は1
#ショップの戻り値は2
#プロフィールの戻り値は0
case $? in
  1 ) ./quest.sh
    ;;
  2 ) ./shop.sh
    ;;
  0 ) ./profile.sh
    ;;
esac
