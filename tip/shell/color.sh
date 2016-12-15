#!/bin/bash
# Text Color: 30 to 37, 90 to 97
# Background Color: 40 to 47, 100 to 107

for base in 29 89 39 99
do
  for i in `seq 8`
  do
    code=`expr ${base} + ${i}`
    printf "\e["$code"m%03d" ${code}
    printf "\e[0m "
  if [ ! -z "$1" ]; then
    sleep 1
  fi
  done
  if [ ! -z "$1" ]; then
    printf "\e[1K\r"
  else
    printf "\n"
  fi
done

echo -ne "\rBye~\n";
