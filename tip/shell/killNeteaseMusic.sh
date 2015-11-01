#!/bin/bash

if [ -z "$1" ]; then
    seconds=1800
else
    seconds="$1"
fi
pid=`ps -ef | grep NeteaseMusic | awk '{print $2}' | head -n 1`

echo "===== Kill PID ${pid} in ${seconds} seconds ====="

for i in `seq -w ${seconds} 1`; do
    echo -ne "\b\b\b\b${i}"
    sleep 1
done
echo -ne "\rDone\n"

kill ${pid}
