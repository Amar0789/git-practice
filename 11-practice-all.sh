#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]
 
 then "Please execute the task with root privileges"

 exit1
fi

which mysql

if [ $? -eq 0 ]

 then echo "mysql is already installed"

 exit1

 else echo "mysql is getting installed"
 yum install mysql -y 
 
fi

 