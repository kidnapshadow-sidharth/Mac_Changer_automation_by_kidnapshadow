#!/bin/bash
# it will download all default vendor list of mac addresh 
# with the help of this file generate first 6 byte of mac addresh
# and the another 6 byte will generate random with random hex value
# example of mac addresh : a4:c4:25:14:b4:5d
# this project is written in bash  --kidnapshadow

green='\e[1;32m'
red='\e[1;31m'
blink='\e[5m'
stop_blink='\e[25m'
stop_color='\e[0m'

macchanger -l > mac.txt
echo    " ----------------------------------------------------"
echo -e "   $blink   $red     welcome to Mac Changer by sidharth     $stop_blink $stop_color      "
echo    " ----------------------------------------------------"
vendermac=$(shuf -n1 mac.txt | awk '{print$3}')
randommac=$(printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256])
echo -e $green $vendermac:$randommac   $stop_color
macchanger -m $vendermac:$randommac eth0
