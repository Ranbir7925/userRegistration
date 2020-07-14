#!/bin/bash
echo "Registration Form"


function registrationForm () {

	read -p "Enter First Name: " Fname
	read -p "Enter Last Name: " Lname
	checker
}

function checker() {

	FnamePattern="^[A-Z]{1}[a-z]{2,}"
	LnamePattern="^[A-Z]{1}[a-z]{2,}"

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

}
registrationForm
