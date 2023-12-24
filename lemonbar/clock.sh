#!/bin/sh

clock() {
    date +%H:%M:%S
} 

while true
do
    BAR_INPUT="$(clock)"
    echo " "$BAR_INPUT
    sleep 1
done 
