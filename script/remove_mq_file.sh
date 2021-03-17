#!/bin/bash

if [ -f /www/*_godomall_com/module/Component/Order/Order.php ] || [ -f /www/*_godomall_com/module/Component/Order/OrderNew.php ];
then
  echo "file exist"
else
  echo "file no exist"
  rm -rf /www/*_godomall_com/config/app/mq.php
fi
