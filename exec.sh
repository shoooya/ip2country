#!/bin/bash

now=`date "+%Y%m%d%H%M%S"`

for var in `cat target.txt`; do
  echo "${var},\c" >> $now.csv;
  echo "`whois $var | grep -i country | head -1 | awk '{print $2}'`,\c" >> $now.csv;
  echo "`whois $var | egrep -i "org|desc" | head -1 | awk '{print $2 $3}'`" >> $now.csv;
done