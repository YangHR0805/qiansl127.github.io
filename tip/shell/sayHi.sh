#!/bin/bash
# Text Color: 30 to 37
# Background Color: 40 to 47
for i in `seq 7`
do
  if [ -z "$1" ]; then
    echo -ne "\r\033[`expr 30 + $i`;mHi\033[0m"
  else
    echo -ne "\r\033[;`expr 40 + $i`mHi\033[0m"
  fi
  sleep 1
done
echo -ne "\rBye~\n";
