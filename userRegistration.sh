#!/bin/bash
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
	PasswordPattern="^([a-zA-Z0-9@#!]){8,}$"
	oneUpperCaseLetter="^[A-Za-z0-9]{0,1}([A-Z]+)?[a-zA-Z0-9]{8,}$"
	atleatOneNumeric="^(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9]{8,}$"
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
	
	if [[ $password =~ $oneUpperCaseLetter ]]
	then
		echo $password Successfully registered one UpperCase
	else
		echo Invalid Uppercase
	fi
	
	if [[ $password =~ $atleatOneNumeric ]]
	then
		echo $password Successfully registered one numeric
	else
		echo Invalid One Numeric
	fi

	if [[ $Email =~ $EmailPattern ]]
   then
      echo "Valid"
   else
      echo "Invalid"
   fi
}
registrationForm
