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
clear
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
  #ダメージが50以上の時
  echo -e "


————————————
$slime_nが倒れた！"
sllep 3
clear
echo -n "


————————————
$nameに30の経験値と150Gを手に入れた"
sleep 3
l2l=`expr 30 + $exp`
clear
echo -n "


————————————
現在の経験値は"
echo -n “$l2l” > money.lx
echo “です”
sllep 3
m2m=`expr 150 + $money`
clear
echo -n "


————————————
現在の所持金は"
echo -n "$m2m" > money.lx
echo "です"
fi
else
  #ダメージが50以下の時
  
clear
    ;;
esac
fi
