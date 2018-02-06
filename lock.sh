#!/bin/bash 

# Take a screenshot
scrot ~/tmp/screen_locked.png

# Pixellate it 10x
mogrify -scale 10% -scale 1000% ~/tmp/screen_locked.png

# Lock screen displaying this image.
i3lock -i ~/tmp/screen_locked.png

# Turn the screen off after a delay.

while pgrep i3lock > /dev/null; do
	sleep 10;
	if [ "$(xprintidle)" -gt "10000" ]; 
	then
		xset dpms force off;
	fi
	if [ "$(xprintidle)" -gt "3600000" ]; 
	then
		systemctl suspend;
	fi
done
