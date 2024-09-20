#!/bin/bash

for packagename in $@

do 

 userid=$(id -u)


if [ $userid -ne 0 ]
 
 then 

 echo "Please execute the task with root privileges"

 exit

fi

 which $@

if [ $? -eq 0 ]

 then echo "$@ is already installed"

 else 

 dnf install $@ -y

 echo "$@ is getting installed"

 exit
fi

done
