#!/bin/bash

echo eco "please check the disc memory and delete some data" >body


source=`df -h .|tail -1|awk -F " " '{print ($NF-1)}'|sed 's/%/ /g'`

if [ $source -gt 11 ];then
cat body|mail -s "disc memory" -c "valmeeki1991@gmail.com" hpsupreeth@gmail.com
fi
