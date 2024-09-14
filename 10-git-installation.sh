#! /bin/bash

userid=$(id -u)

if [ $userid eq 0 ]

then

dnf install mysql -y

else 

exit1

