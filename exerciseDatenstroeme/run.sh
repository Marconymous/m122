#!/bin/bash

echo "blau" > client
echo "gruen" > cli.ent 
echo "gelb" >> client
echo "rot" > client.r
cat cli* > file2
echo `cat file2` > file3

cat file3
