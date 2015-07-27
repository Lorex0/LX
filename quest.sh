#!/bin/bash
. ./config.sh
#config.shに書かれてる変数を読み込み
cd quest
#クエストディレクトリに移動
case $level in
  1 ) ./quest1.sh ;;
  [2-5] ) ./quest2-5.sh ;;
  [6-9] ) ./quest6-9.sh ;;
esac
