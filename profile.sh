#!/bin/bash
. ./config.sh
clear
echo -e "名前:$name
レベル:$level
所持金:$money
経験値:$exp"
cd /var/mobile/Library/Preferences/Shell
sleep 3
./gamestart.sh
