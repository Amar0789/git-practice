#!/bin/bash

 userid=$(id -u)

checkuser() {

if [ $userid -ne 0 ]
 
 then 

 echo "Please execute the task with root privileges"

 exit

fi

    
}

$checkuser

dnf list installed $packagename

if [ $? -eq 0 ]

 then echo "$packagename is already installed"

 else 

 yum install $packagename -y

 echo "$packagename is getting installed"

 
fi

done