#!/bin/bash
. ./config.sh
#config.shに書かれてる変数を読み込み
clear
echo -e "名前:$name
レベル:$level
所持金:$money
経験値:$exp"
cd /var/mobile/Library/Preferences/Shell
#ゲームディレクトリに移動
sleep 3
#3秒間待つ
./gamestart.sh
#gamestart.shを実行
