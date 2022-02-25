#!/bin/bash
# This bash script is intended to simplify image capturing
# It utilizes the raspistill utility, which is obviously required
# author: Max Marshall
# email: maxtmarshall99@gmail.com
################################################################################
# Expected args: [Shutter Speed (ms)] [Save location] [Base Filename]
# Example use: ./batch_photo_cap.sh 6000 images test
# This would run the program with a shutter speed of 6 seconds, and deposit
# Files named testXX.jpg in the images folder
if [[ $# != 3 ]]; then
	echo "Incorrect args. Quitting..."
	exit
fi
TIME=$1
FOLDER=$2
BASENAME=$3

for ((i = 0; ; i++)); do
	echo "Take Photo? (Y/n)"
	read  ans
	if [[ "$ans" != "n" ]]; then
		printf "$FOLDER/$BASENAME%.02d.jpg\n" $i
	else
		echo "Quitting..."
		break
	fi

done