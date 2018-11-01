#!/bin/bash
FIRST=$1
SECOND=$2

if [ ! $# -eq 2 ]; then
	echo "Need two argument"
	exit 1;
fi

#let RESULT=FIRST*SECOND

if [ $? -ne 0 ]; then
	echo "You need to put 2 interger"
	exit 2
else
	let RESULT=FIRST*SECOND
	echo "$FIRST*$SECOND=$RESULT"
fi
