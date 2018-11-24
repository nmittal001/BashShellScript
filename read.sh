#!/bin/bash
echo -n Your Age
read Age
read -sp "your name" NAME
echo  $NAME
read HOSTNAME < /etc/hostname
echo $HOSTNAME
