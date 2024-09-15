#! /bin/bash

userid=$(id -u)

if [ $userid -ne 0 ] 

 then 

  echo "please proceed with root privileges"

  exit 

fi

dnf list installed git 

if [ $? -eq 0 ]

then 

echo "git is already intalled"

else 

    dnf install git -y

    echo "Git is installed now"

fi