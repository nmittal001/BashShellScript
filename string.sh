#!/bin/bash
STR1="hello buddy"
STR2="hello buddy"

if [ "$STR1" = "$STR2" ]; then #space is important, so maintain space(It will not execute if space is not maintain (Not equal will execute))
#if [[ $STR1 = $STR2 ]]; then
	echo "equal"
else
	echo "NOt equal"
fi
