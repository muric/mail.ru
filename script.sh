#!/bin/bash

logfile=$1
if [[ -z "$logfile" ]]; 
then
	echo "log is not set?"
	echo "example run  /bin/bash script.sh log.txt"
 else

		 /bin/cat $logfile |grep -v ' 200' |awk '{print $4}' |sed -r 's/^.//'|sed 's/.\{6\}$//' |uniq -c |column -t -s ' '
 fi