#!/bin/bash

amtFiles=5
fileName=file
folder=./

interactive ()
{
  echo "Anzahl Dateien (Default: 5) > "
  read amtFiles
  
  echo "Dateiname (Default: file)   > "
  read fileName

  echo "Ordner (Default "./")       > "
  read folder
}

createFiles ()
{
  amtFiles=$((amtFiles-1))
  for c in $(eval echo {0..$amtFiles})
  do
    touch "$folder$fileName$c".txt
  done
}


while getopts 'hi' OPTION; do
  case "$OPTION" in 
    h) 
      echo -e "This Program is used to touch multiple files with the following format:\n - filename + number + .txt\n\nArguments:\n  1> The Amount of files to create\n  2> The fileName for the files\n  3> the folder to create the files in"
      exit 1
      ;;

    i)
      interactive
      createFiles
      exit 0
      ;;

  esac
done

if [ "$1" ] 
then
  amtFiles=$1
fi

if [ "$2" ] 
then
  fileName=$2
fi

if [ "$3" ] 
then
  folder=$3
fi

createFiles
