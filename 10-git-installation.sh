#! /bin/bash

userid=$(id -u)

if [ $userid -eq 0 ]

then

dnf install git -y

else 

exit1

fi
