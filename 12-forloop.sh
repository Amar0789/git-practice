#!/bin/bash

for packagename in $@

do 

 userid=$(id -u)

 if [ $userid -ne 0 ] 

  then 

  echo "please proceed with root privileges"

  exit 

 fi

  dnf list installed $packagename 

 if [ $? -eq 0 ]

  then 

  echo "$pacakagename is already intalled"

 else 

    dnf install $packagename -y

    echo -e "$packagename is \e[33m installed now \e[0m"

 fi

done
