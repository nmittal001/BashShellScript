#!/bin/bash
echo -n "Enter your Age"
read AGE
#donot write->
#[ $AGE -lt 18 ] && ( echo "You are under Age"; exit 1 ) || echo Welcome
#because exit is working under sub shell(another shell)
[ $AGE -lt 18 ] && { echo "You are under Age"; exit 1 ;} || echo Welcome
echo Secret is that there is no secret
