#!/bin/bash

for packagename in $@

do 

 userid=$(id -u)


if [ $userid -ne 0 ]
 
 then 

 echo "Please execute the task with root privileges"

 exit

fi

 which $packagename

if [ $? -eq 0 ]

 then echo "$packagename is already installed"

 else 

 dnf install $packagename -y

 echo "$packagename is getting installed"

 exit
fi

done
