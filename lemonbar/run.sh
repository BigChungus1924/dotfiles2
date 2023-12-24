#!/bin/sh

killall lemonbar
 

/home/$USER/.config/lemonbar/battery.sh | lemonbar -p -g 1838x22+82+0 -f "Liberation Mono:size=7" -B "#121212" & sh /home/$USER/.config/lemonbar/clock.sh | lemonbar -p -B "#54487A" -g 82x22 -f "Liberation Mono:size=7"
