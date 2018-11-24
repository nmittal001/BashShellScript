#!/bin/bash
#write script which will work with parametes:
#-f or --file will provides info about number of lines, words, and characters.
#-h or --help will provide usage message

while [ $# -gt 0 ]
do
	case "$1" in 
		-h|--help)
			echo "USAGE: $0 [-h][--help] [-f][--file]"
			shift
			exit 1
			;;
		-f|--file)
			FILE=$2
			if ! [ -f "$FILE" ]; then
				echo "file doesnot exit"
				exit 2
			fi
			LINES=`cat "$FILE" | wc -l`
			WORDS=`cat $FILE | wc -w`
			CHARACTERS=`cat $FILE | wc -m`
			echo "FILE $FILENAME"
			echo "LINES $LINES"
			echo "WORDS $WORDS"
		        echo "CHARACTERS $CHARACTERS"
			shift
			shift
			;;
		*)
			echo "USAGE: $0 [-h][--help] [-f][--file]"
			exit 1
			;;
	esac
done
