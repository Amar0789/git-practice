#!/bin/bash

for packagename in $@

do 

 userid=$(id -u)


if [ $userid -ne 0 ]
 
 then 

 echo "Please execute the task with root privileges"

 exit

fi

 dnf list installed $packagename

if [ $? -eq 0 ]

 then echo "$packagename is already installed"

 else 

 yum install $packagename -y

 echo "$packagename is getting installed"

 
fi

done
