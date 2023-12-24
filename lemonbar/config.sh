#!/bin/sh

clock() {
    date +%H:%M:%S
} 
battery() {
    upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}'
}
separator() {
	echo "         "
}

while true
do
    BAR_INPUT="$(clock)"
    echo $BAR_INPUT
    sleep 1
done 
