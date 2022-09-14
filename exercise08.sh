#!/bin/bash

if [ $# -lt 3 ]    # lt = lower then
   then
   echo "Drei Argumente erforderlich ..."
   echo "$0 arg1 arg2 arg3"
   exit 1
fi

first=`expr $1 + $2`
second=$(($3 - $1))
let third=$2*$3

echo "$1 + $2 = $first"
echo "$3 - $1 = $second"
echo "$2 * $3 = $third"
