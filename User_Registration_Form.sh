#!/bin/bash -x

shopt -s extglob 		#Extended global

echo "Enter the user First Name"
read user
first_name_pattern='^[A-Z]{1}[a-z]{2,}$'
if [[ $user =~ $first_name_pattern ]]
then
	echo valid
else
	echo invalid
fi

echo "Enter the last name"
read user
last_name_pattern='[A-Z]{1}[a-z]{2,}$'
if [[ $user =~ $last_name_pattern ]]
then
	echo valid
else
	echo invalid
fi
