#!/bin/bash
read -p "Enter Name: " name

namePattern="^[A-Z]{1}[a-z]{2,}"

if [[ $name =~ $namePattern ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
