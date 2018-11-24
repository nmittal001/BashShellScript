#!/bin/bash

#show 3 lines od ps command only to root user

WHOAMI=$(whoami)

if [ "$WHOAMI" != "root" ]; then
	echo "YOu are not root"
	exit 1
fi

ps -ef | head -3
