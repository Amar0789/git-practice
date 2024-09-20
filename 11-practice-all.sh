#!/bin/bash

for packagename in $@

do 

 userid = $(id -u)


if [ userid -ne 0 ]
 
 then 

 echo "Please execute the task with root privileges"

 exit

 else 

fi

 dnf list intalled $packagename

if [ $? -eq o ]

 then echo "$packagename is already installed"

 else 

 dnf install $packagename -y

 echo "$packagename is getting installed"

 exit
fi

done
