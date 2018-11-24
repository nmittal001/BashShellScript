#!/bin/bash
check=0
echo -n "Enter your name"
read NAME
echo -n "ENTER Your AGE"
read AGE
while [ $check -eq 0 ]
do
	echo -n "Is That correct?[Y/n]"
	read ANSWER
	case "$ANSWER" in
		"Y"|"y")
			echo "NAME: $NAME">> del.txt
			echo "AGE: $AGE">> del.txt
			echo "Your date were saved"
			check=1
			;;
		N|n)
			echo "Nothing is saved"
			check=1
			;;
		*)
			echo "Wrong answer provided"
			;;
	esac
done

