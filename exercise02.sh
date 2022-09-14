#! /bin/bash
# Exercise 02: Show some information about the system
# author: Marc Andri Fuchs 
# date: 23.08.2022 
echo "Current Date" $(date '+%A, %d.%m.%y')
echo "Current User" $(whoami)
echo "Current Logged In Users" $(who)
echo "Working Directory" $(pwd)
echo "Hostname" $(hostname)
echo "IP-Adress" $(hostname -i)
