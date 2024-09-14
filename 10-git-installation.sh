#! /bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]

then

      echo "please run the script with root privileges"

    exit1
fi

dnf install git -y

if [ $? -ne 0 ]

then 
     
    echo "git is going to be installed"

else 

     echo "git is already installed"

fi     
