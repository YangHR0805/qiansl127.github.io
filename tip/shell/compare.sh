#!/bin/bash
if [ 1 -lt 2 ]; then
  echo "1 -lt 2"
fi

if [ "a" = "a" ]; then
  echo "a = a";
fi

if [ -z "" ]; then
  echo "string is empty"
fi

if [ -n "" ]; then
  echo "string is not empty"
else
  echo "string is empty"
fi
