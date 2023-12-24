#!/bin/sh

SEPARATOR="              "
RED='\033[0;31m'
NC='\033[0m' # No Color


battery(){
	upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}'
}
network(){
	ip addr show |grep -w inet |grep -v 127.0.0.1|awk '{ print $2}'| cut -d "/" -f 1
}

while true
do
    BAR_INPUT="$(battery)"
    echo " PWR" $BAR_INPUT " || " $(network)
    sleep 1
done


