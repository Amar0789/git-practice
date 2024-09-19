#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]
 
 then "Please execute the task with root privileges"

 exit 1
fi

which mysql

if [ $? -eq 0 ]

 then echo "mysql is already installed"

 exit 1

 else echo "mysql is getting installed"
 yum install mysql -y 

fi

 