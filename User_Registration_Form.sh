#!/bin/bash -x

shopt -s extglob 		#Extended global

function  firstName(){
echo "Enter the user First Name"
read user
first_name_pattern='^[A-Z]{1}[a-z]{2,}$'

if [[ $user =~ $first_name_pattern ]]
then
	echo valid
else
	echo invalid
fi
}

function lastName(){
echo "Enter the last name"
read user
last_name_pattern='^[A-Z]{1}[a-z]{2,}$'

if [[ $user =~ $last_name_pattern ]]
then
	echo valid
else
	echo invalid
fi
}

function email(){
echo "Enter your email address"
read email
email_pattern="[a-zA-Z0-9]+([._-+][a-zA-Z0-9]+)*@[a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})$"

if [[ $email =~ $email_pattern ]]
then
	echo valid
else
	echo invalid
fi

}


firstName
lastName
email
