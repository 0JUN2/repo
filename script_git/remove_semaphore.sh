#/bin/bash

file=aaa.txt

ipcs -m | grep root | awk '{print $2}' > aaa.txt
#ipcs -s | grep root | awk '{print $2}' > aaa.txt

for samid in $( cat $file )
do

list=`echo $samid`
ipcrm -m $list
#ipcrm -s $list
done
