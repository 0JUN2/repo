#!/bin/sh

result=`ls -l /www/*_godomall_com/route.php | awk '{print $3}' | wc -l`
result2=`ls -l /www/*_godomall_com/route.php | awk '{print $3}'` 
ADMIN="youngjun-cho@godo.co.kr"
server_ip=`/sbin/ifconfig -a | grep inet | awk -F ' ' '{print $2}' | head -n1`
server_host=`/bin/hostname`
SUBJECT="$server_host ( $server_ip ) user line number"

if [ $result -eq 1 ];
then
  echo "result is 1"
  #chown $result2.echost /www/*_godomall_com/config/app/mq.php
  #chmod 707 /www/*_godomall_com/config/app/mq.php
else
  result2=`ls -l /www/*_godomall_com/route.php | awk '{print $3}'`
  echo "$result2" |mail -s "$SUBJECT"  $ADMIN
fi
