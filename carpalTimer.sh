#!/bin/sh
# Rambo You
# Carpal tunnel rest timer
# Check out https://www.reddit.com/r/DotA2/comments/67t5js/suffering_from_wrist_pain_or_carpal_tunnel/# for an awesome reddit post on carpal tunnel exercises along with GIFs.

#pause function

function pause(){
	   read -p "$*"
}

for i in {0..5}
	do
		echo "Starting Carpal Tunnel Rest Timer. 10 minutes until next break."
		sleep 200
		echo "......"
		sleep 200
		echo "...."
		sleep 100
		echo ".."
		sleep 100
		echo "."
		echo "Take a short break."
		printf '\a'
		echo "......"
		sleep 30
		echo "You have rested for 30 seconds.."
		sleep 30
		echo "...."
		echo "You have rested for 1 minute.."
		echo ".."
		printf '\a'
		pause 'Press [Enter] when you are ready to start working again.'
		echo " "
	done
	
echo "Perform wrist exercises before starting script again."


