#!/bin/bash -x

shopt -s extglob 		#Extended global

first_name_pattern='^[A-Z]{1}[a-z]{2,}$'
last_name_pattern='^[A-Z]{1}[a-z]{2,}$'
email_pattern='^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)?@[a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$'
mobile_number_pattern="([0-9]{2}[[:space:]])?[0-9]{10}$"
password_pattern="^[A-Za-z0-9]*[@#$%^&*][0-9a-zA-Z]*$"

function patternValidation(){

	if [[ $1 =~ $2 ]]
	then
		echo Valid
	else
		echo invalid
	fi
}

function  firstName(){

	echo "Enter the user First Name"
	read user
	patternValidation $user $first_name_pattern 

}

function lastName(){

	echo "Enter the last name"
	read user
	patternValidation $user $last_name_pattern 
}

function email(){

	echo "Enter your email address"
	read email
	patternValidation $email $email_pattern 
}

function mobileNumber(){

	echo "Enter your mobile number with country code"
	read mobile_number
	patternValidation $mobile_number $mobile_number_pattern 
}

function checkPassword(){

	echo "Please Enter Password"
	read password
	count =`echo ${#password}`

	if [[ $count -ne 8 ]]
	then
		echo "Password should have atleast 8 character"
	exit 1;
	fi

	patternValidation $password $password_pattern
}

firstName
lastName
email
mobileNumber
checkPassword
