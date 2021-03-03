#!/bin/sh

## Server info
eventSet_1=("ip" "ip2")
eventSet_2=("ip" "ip2")
eventSet_3=("ip" "ip2")
eventSet_3=("ip" "ip2")

## Input content
echo $0
echo ""
echo "1. event set: ip ~ ip"
echo "2. event set: ip ~ ip"
echo "3. event set: ip ~ ip"
echo "4. event set: ip ~ ip"

read -e -p "select (1~4): " setSrvNum
read -e -p "log date? ex)20200501 : " setDomainDate
read -e -p "primary domain name: " setDomainName

## empty log folder
rm -rf /bdisk/youngjun/script/ssl_log/*

## Conditional statement
if [ $setSrvNum = 1 ]; 
then
  for i in ${eventSet_1[@]};
do
  echo ""
  ## server list
  echo $i
  ## rsync
  rsync -aPvl $i::sync_log/usr/local/apache/logs/ssl_transferlog/*$setDomainName*-$setDomainDate /bdisk/youngjun/script/ssl_log/
done
  ## goaccess
  cd /bdisk/youngjun/script/ssl_log/
  goaccess -f www.$setDomainName* m.$setDomainName* -a > $setDomainName-$setDomainDate.html
  /bin/cp -f $setDomainName-$setDomainDate.html /www/default/html/
  echo ""
  ls -al *.html | awk '{print $9}'

elif [ $setSrvNum = 2 ]; 
then 
for j in ${eventSet_2[@]};
do
  echo ""
  echo $j
  rsync -aPvl $j::sync_log/usr/local/apache/logs/ssl_transferlog/*$setDomainName*-$setDomainDate /bdisk/youngjun/script/ssl_log/
  
 done
  cd /bdisk/youngjun/script/ssl_log/
  goaccess -f www.$setDomainName* m.$setDomainName* -a > $setDomainName-$setDomainDate.html
  /bin/cp -f $setDomainName-$setDomainDate.html /www/default/html/
  echo ""
  ls -al *.html | awk '{print $9}'

elif [ $setSrvNum = 3 ];
then
for k in ${eventSet_3[@]};
do
  echo ""
  echo $k
  rsync -aPvl $k::sync_log/usr/local/apache/logs/ssl_transferlog/*$setDomainName*-$setDomainDate /bdisk/youngjun/script/ssl_log/
  #rsync -aPvl $k::sync_log/usr/local/apache/logs/ssl_transferlog/*20200825 /bdisk/youngjun/script/ssl_log/
done
  cd /bdisk/youngjun/script/ssl_log/
  goaccess -f www.$setDomainName* m.$setDomainName* -a > $setDomainName-$setDomainDate.html
  /bin/cp -f $setDomainName-$setDomainDate.html /www/default/html/
  echo ""
  ls -al *.html | awk '{print $9}'

elif [ $setSrvNum = 4 ];
then
for o in ${eventSet_4[@]};
do
  echo ""
  echo $o
  rsync -aPvl $o::sync_log/usr/local/apache/logs/ssl_transferlog/*$setDomainName*-$setDomainDate /bdisk/youngjun/script/ssl_log/
done
  cd /bdisk/youngjun/script/ssl_log/
  goaccess -f www.$setDomainName* m.$setDomainName* -a > $setDomainName-$setDomainDate.html
  /bin/cp -f $setDomainName-$setDomainDate.html /www/default/html/
  echo ""
  ls -al *.html | awk '{print $9}'
fi
