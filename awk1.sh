#!/bin/bash
# ./file.sh [-l location] [--location location] [-e extension] [--extension extension] [-h] [--help]
function usage()
{
	echo "USAGE: $0 [-l location] [--location location] [-e extension] [--extension extension] [-h] [--help]"
	echo "EXAMPLES::"
	echo "$0 -l /etc/ -e txt -s"
	echo "$0 -e img --stats"
	echo
	exit 1
}
STATS=0
LOC_SET=0
while [ $# -gt 0 ]
do
	case $1 in
		-l|--location )
			LOCATION="$2"
			if ! [ -d "$LOCATION" ]; then
				echo $LOCATION
				usage
			fi
			LOC_SET=1
			shift
			shift
			;;
		-e|--extension)
			EXT="$2"
			shift
			shift
			;;
		-s|stats)
			STATS=1
			shift
			shift
			;;
		-h|--help)
			shift
			usage
			;;
		*)
			usage
			;;
	esac	
done

if [ $LOC_SET -ne 1 ]; then
	LOCATION=$(pwd)
fi

echo "Location:-> $LOCATION"
if [ "$EXT" != "" ]; then
        ls -l $LOCATION | awk '/^-/' | grep "\.$EXT$" &>/dev/null
	if [ $? -ne 0 ]; then
		echo "No file with extension: $EXT found"
		exit 2
	fi
	#count size of files with specific extension
	ls -l $LOCATION | awk '/^-/' | grep "\.$EXT$" | awk -v stats=$STATS -f size.sh
else
	ls -l $LOCATION |awk -v stats=$STATS -f size.sh
fi
