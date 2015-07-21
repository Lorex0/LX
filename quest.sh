#!/bin/bash
clear
if [ $level -ge 1 ]; then
  #レベル1から10までののクエスト
  echo -e "———     ———    ———
|$slime_n|    |$slime_n|   |$slime_n|
———     ———    ———
————————————
$slime_nが3対現れた!"
sleep 3
sbalert -t "どうする？" -a "斬る" -o "呪文"
clear
case $? in
  1 ) echo -e "———     ———    ———
|$slime_n|    |$slime_n|   |$slime_n|
———     ———    ———
————————————
$nameは剣を大きく振りかぶった!"
sleep 3
s1a="$l1a"
echo -e -n "———     ———    ———
|$slime_n|    |$slime_n|   |$slime_n|
———     ———    ———
————————————
$slime_n3体に"
echo -e -n "$s1a" > s1a.kr
echo -e "のダメージ1"
sleep 3
clear
is1a=`cat s1a.kr`
if [[ $is1a -ge 50 ]]; then
  echo -e "


————————————
$slime_nが倒れた！"
sllep 2
echo ""

fi
clear
    ;;
esac
fi
