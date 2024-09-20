#!/bin/bash

for packagename in $@

user=$(id -u)

if [ $user -ne 0 ]

 then echo "Please execute the task with root privileges"
 exit 1

fi

yum list intalled $packagename

if [ $? -eq 0 ]

 echo "$package is already intstlled"

 exit 1

 else 

 yum install $packagename -y

 echo "$packagename is getting installed"

fi
