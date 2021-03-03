#!/bin/sh

## Author NHN Godo DevOps-YoungJun Jo. 

## function
function apacheLog() {
cat $log_path | grep $year:00:  | echo "00:00 ~ 00:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:01:  | echo "01:00 ~ 01:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:02:  | echo "02:00 ~ 02:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:03:  | echo "03:00 ~ 03:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:04:  | echo "04:00 ~ 04:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:05:  | echo "05:00 ~ 05:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:06:  | echo "06:00 ~ 06:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:07:  | echo "07:00 ~ 07:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:08:  | echo "08:00 ~ 08:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:09:  | echo "09:00 ~ 09:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:10:  | echo "10:00 ~ 10:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:11:  | echo "11:00 ~ 11:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:12:  | echo "12:00 ~ 12:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:13:  | echo "13:00 ~ 13:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:14:  | echo "14:00 ~ 14:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:15:  | echo "15:00 ~ 15:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:16:  | echo "16:00 ~ 16:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:17:  | echo "17:00 ~ 17:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:18:  | echo "18:00 ~ 18:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:19:  | echo "19:00 ~ 19:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:20:  | echo "20:00 ~ 20:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:21:  | echo "21:00 ~ 21:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:22:  | echo "22:00 ~ 22:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:23:  | echo "23:00 ~ 23:59 :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`

## total traffic capacity
cat $log_path | echo "total(MB) :" `awk '{sum += $10} END {print sum/1024000,"MByte"}'`
cat $log_path | echo "total(GB) :" `awk '{sum += $10} END {print sum/1024/1024/1024,"GByte"}'`
}

function sslLog() {
cat $log_path | grep $year:00:  | echo "00:00 ~ 00:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:01:  | echo "01:00 ~ 01:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:02:  | echo "02:00 ~ 02:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:03:  | echo "03:00 ~ 03:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:04:  | echo "04:00 ~ 04:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:05:  | echo "05:00 ~ 05:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:06:  | echo "06:00 ~ 06:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:07:  | echo "07:00 ~ 07:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:08:  | echo "08:00 ~ 08:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:09:  | echo "09:00 ~ 09:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:10:  | echo "10:00 ~ 10:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:11:  | echo "11:00 ~ 11:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:12:  | echo "12:00 ~ 12:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:13:  | echo "13:00 ~ 13:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:14:  | echo "14:00 ~ 14:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:15:  | echo "15:00 ~ 15:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:16:  | echo "16:00 ~ 16:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:17:  | echo "17:00 ~ 17:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:18:  | echo "18:00 ~ 18:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:19:  | echo "19:00 ~ 19:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:20:  | echo "20:00 ~ 20:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:21:  | echo "21:00 ~ 21:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:22:  | echo "22:00 ~ 22:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | grep $year:23:  | echo "23:00 ~ 23:59 :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`

## total traffic capacity
cat $log_path | echo "total(MB) :" `awk '{sum += $9} END {print sum/1024000,"MByte"}'`
cat $log_path | echo "total(GB) :" `awk '{sum += $9} END {print sum/1024/1024/1024,"GByte"}'`
}


## global variable
log_path=""
log_day=""

## input log info
read -e -p "Log_fileName [ex : youngjun.godomall.com_30_transfer_log] : " filename
read -e -p "Log_fileYear [ex : 2019] : " year

log_path=`find /usr/local/ -name $filename`
#log_path=`find /usr/local/ -name $filename_$log_day_transfer_log`

read -e -p "SSL Log ? [ex : y or n (default : apache)] : " result

if [[ $result = "n" ]] || [[  $result = "" ]]; 
then
   echo "
-------------------------------------------------------
                     Apache format                    
-------------------------------------------------------
   "
      apacheLog

elif [ $result = "y" ]; 
then
   echo "
-------------------------------------------------------
                     Apache SSL format                
-------------------------------------------------------
   "
      sslLog

else
   echo "invalid value script end"
fi

