#!/bin/bash
shopt -s extglob
echo "Registration Form"


function registrationForm () {

	read -p "Enter First Name: " Fname
	read -p "Enter Last Name: " Lname
	read -p "Enter Phone no: " Phone
	read -p "Enter Password: " password
	read -p "Enter Email: " Email
	checker
}

function checker() {

	FnamePattern="^[A-Z]{1}[a-z]{2,}$"
	LnamePattern="^[A-Z]{1}[a-z]{2,}$"
	PhonePattern="^[0-9]{1,3}[ ][1-9]{1}[0-9]{9}$"
	PasswordPattern="^[a-zA-Z0-9]*[!@#$%]{1}[a-zA-Z0-9]*$"
	EmailPattern="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
	if [[ $Fname =~ $FnamePattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi

	if [[ $Lname =~ $LnamePattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi

	if [[ $Phone =~ $PhonePattern ]]
	then
		echo "valid"
	else
		echo "Invalid"
	fi

	if [[ $password =~ $PasswordPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
	
	if [[ $Email =~ $EmailPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}
registrationForm
