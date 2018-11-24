#!/bin/bash

#for provided file print the summary of what permission user has granted
#READ: YES
#WRITE: NO
#EXECUTE: NO

#argument check
if [ $# -ne 1 ]; then
	echo "please provide exactly one argument"
	exit 1
fi

#varible assignment
FILE=$1

#check if the file exists
if [ -f $FILE ]; then
	#default variables
	VAR_READ="NO"
	VAR_WRITE="NO"
	VAR_EXE="NO"

	#check if file is readable
	if [ -r $FILE ]; then
		VAR_READ="YES"
	fi
	#check if file is writable
	if [ -w $FILE ]; then
		VAR_WRITE="YES"
	fi
	if [ -x $FILE ]; then
		VAR_EXE="YES"
	fi

	#write permission summary to user
	echo =======FILE $FILE ===========
	echo "READ: $VAR_READ"
	echo "WRITE: $VAR_WRITE"
	echo "EXECUTABLE: $VAR_EXE"
else
	if [ -d $FILE ]; then
		echo "$FILE is directory"
	else
		echo "It is not the directory"
	fi
fi


