#!/bin/bash

ADMIN="youngjun-cho@godo.co.kr"
server_ip=`/sbin/ifconfig -a | grep inet | awk -F ' ' '{print $2}' | head -n1`
server_host=`/bin/hostname`
result2=`ls -l /www/*_godomall_com/route.php | awk '{print $3}'`
SUBJECT="[devops_report] $server_host ( $server_ip ) file exist"

if [ -f /www/*_godomall_com/module/Component/Order/Order.php ] || [ -f /www/*_godomall_com/module/Component/Order/OrderNew.php ];
then
  #echo "file exist"
  echo "$server_ip $server_host" |mail -s "$SUBJECT"  $ADMIN
else
  echo "file no exist"
  cp -f /home/godosystem/tmp/mq.php /www/*_godomall_com/config/app/
  chown $result2.echost /www/*_godomall_com/config/app/mq.php
  chmod 707 /www/*_godomall_com/config/app/mq.php
fi
