#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]
 
 then "Please execute the task with root privileges"

 exit1
fi

yum install mysql -y

if [ $? -eq 0 ]

 then echo "mysql is getting installed"

 else echo "mysql is already installed"

fi

 