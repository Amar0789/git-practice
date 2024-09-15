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

    echo -e "Git is \e[33m installed now \e[0m"

fi