#!/bin/bash
website="http://www.google.com/cn"
pattern="^http://([^/]+)"
if [[ $website =~ $pattern ]]; then
  echo ${BASH_REMATCH[0]}
  echo ${BASH_REMATCH[1]}
else
  echo "Match Failed"
fi
