#!/bin/bash
echo "Registration Form"


function registrationForm () {

	read -p "Enter First Name: " Fname
	read -p "Enter Last Name: " Lname
	read -p "Enter Phone no: " Phone
	read -p "Enter Password: " Password
	checker
}

function checker() {

	FnamePattern="^[A-Z]{1}[a-z]{2,}$"
	LnamePattern="^[A-Z]{1}[a-z]{2,}$"
	PhonePattern="^[0-9]{1,3}[ ][1-9]{1}[0-9]{9}$"
	PasswordPattern="^([a-zA-Z0-9@#!]){8,}$"

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

	if [[ $phone =~ $phonePattern ]]
	then
		echo "valid"
	else
		echo "Invalid"
	fi

	if [[ $password =~ $passwordPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}
registrationForm
