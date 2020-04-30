#!/bin/bash -x

shopt -s extglob 		#Extended global

echo "Enter the user First Name"
read user
pattern='^[A-Z]{1}[a-z]{3,}$'

if [[ $user =~ $pattern ]]
then
	echo valid
else
	echo invalid
fi
