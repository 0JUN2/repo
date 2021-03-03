#!/bin/sh

## Event server info
eventSet_1=("106.249.28.173" "106.249.28.174" "106.249.28.175" "106.249.28.176" "106.249.28.177" "106.249.28.178" "106.249.28.179" "106.249.28.180" "106.249.28.181" "106.249.28.182" "106.249.28.183" "106.249.28.184")
eventSet_2=("106.249.28.190" "106.249.28.191" "106.249.28.192" "106.249.28.193" "106.249.28.194" "106.249.28.195" "106.249.28.196" "106.249.28.197" "106.249.28.198" "106.249.28.199" "106.249.28.200" "106.249.28.201")
eventSet_3=("106.249.25.162" "106.249.25.163" "106.249.25.164" "106.249.25.214" "106.249.25.215" "106.249.25.216" "106.249.25.217" "106.249.25.218")
eventSet_4=("106.249.28.166" "106.249.28.167" "106.249.28.168" "106.249.28.169" "106.249.28.170" "106.249.28.202")

## Input content
echo $0
echo ""
echo "1. event set: 106.249.28.173 ~ 106.249.28.184 (12 set)"
echo "2. event set: 106.249.28.190 ~ 106.249.28.201 (12 set)"
echo "3. event set: 106.249.25.162 ~ 106.249.25.214 (8 set)"
echo "4. event set: 106.249.28.166 ~ 106.249.28.202 (8 set)"

#echo -n "select (1~4): "
#read setSrvNum
read -e -p "select (1~4): " setSrvNum
read -e -p "log date? ex)20200501 : " setDomainDate
read -e -p "primary domain name: " setDomainName

## empty log folder
rm -rf /bdisk/youngjun/script/apache_log/*

## Conditional statement
if [ $setSrvNum = 1 ]; 
then
  for i in ${eventSet_1[@]};
do
  echo ""
  ## server list
  echo $i
  ## rsync
  rsync -aPvl $i::sync_log/usr/local/apache/logs/transferlog/*$setDomainName*-$setDomainDate /bdisk/youngjun/script/apache_log/
done
  ## goaccess
  cd /bdisk/youngjun/script/apache_log/
  goaccess -f www.$setDomainName* -a > $setDomainName-$setDomainDate.html
  /bin/cp -f $setDomainName-$setDomainDate.html /www/default/html/
  echo ""
  ls -al *.html | awk '{print $9}'

elif [ $setSrvNum = 2 ]; 
then 
for j in ${eventSet_2[@]};
do
  echo ""
  echo $j
  rsync -aPvl $j::sync_log/usr/local/apache/logs/transferlog/*$setDomainName*-$setDomainDate /bdisk/youngjun/script/apache_log/
  
 done
  cd /bdisk/youngjun/script/apache_log/
  goaccess -f www.$setDomainName* -a > $setDomainName-$setDomainDate.html
  /bin/cp -f $setDomainName-$setDomainDate.html /www/default/html/
  echo ""
  ls -al *.html | awk '{print $9}'

elif [ $setSrvNum = 3 ];
then
for k in ${eventSet_3[@]};
do
  echo ""
  echo $k
  rsync -aPvl $k::sync_log/usr/local/apache/logs/transferlog/*$setDomainName*-$setDomainDate /bdisk/youngjun/script/apache_log/
done
  cd /bdisk/youngjun/script/apache_log/
  goaccess -f www.$setDomainName* -a > $setDomainName-$setDomainDate.html
  /bin/cp -f $setDomainName-$setDomainDate.html /www/default/html/
  echo ""
  ls -al *.html | awk '{print $9}'

elif [ $setSrvNum = 4 ];
then
for o in ${eventSet_4[@]};
do
  echo ""
  echo $o
  rsync -aPvl $o::sync_log/usr/local/apache/logs/transferlog/*$setDomainName*-$setDomainDate /bdisk/youngjun/script/apache_log/
done
  cd /bdisk/youngjun/script/apache_log/
  goaccess -f www.$setDomainName* -a > $setDomainName-$setDomainDate.html
  /bin/cp -f $setDomainName-$setDomainDate.html /www/default/html/
  echo ""
  ls -al *.html | awk '{print $9}'
fi
