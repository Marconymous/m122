#!/bin/bash
#author: Marc Andri Fuchs
#date:   06.09.2022

scriptFull=$(realpath $0)
echo "Pfad: $scriptFull"
scriptName=${0##*/}
echo "Dieses Script heisst ${scriptName^^}"
let quantity
quantity=7
count=3
item=11 
echo $((count * item))
