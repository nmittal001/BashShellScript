#!/bin/bash

function addition
{
	local FIRST=$1
	SECOND=$2
	let RESULT=FIRST+SECOND
	#echo "Result is $RESULT"
	let FIRST++
	let SECOND++
	echo "Printing values of variable inside function"
	echo $FIRST
	echo $SECOND
	echo "Result is $RESULT"
	echo "============================================"

}

#do the addition of two numbers
echo -n "Enter first number"
read FIRST
echo -n "Enter second number"
read SECOND
addition $FIRST $SECOND

echo "Printing values of variable"
echo $FIRST
echo $SECOND
echo "result=$RESULT"
