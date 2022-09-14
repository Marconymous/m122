#!/bin/bash

amtFiles=5
fileName=file
folder=./

if [[ "$1" ]]; then
	amtFiles=$1
fi

if [[ "$2" ]]; then
	fileName=$2
fi

if [[ "$3" ]]; then
	folder=$3
fi

fileEndings=`seq 0 $amtFiles`

files=$folder$fileName{0..$amtFiles}.txt
echo $files
touch files