#!/bin/bash
#start time measurement from here
START=$(date +%s)
CURRENT_DIRECTORY=$(pwd)
sleep 2 # sleep 2 second
END=$(date +%s)
Diff=$((END-START))
echo $CURRENT_DIRECTORY
echo TIME: $Diff second
