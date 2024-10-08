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

    yum install $packagename -y

    echo -e "\e[32m $packagename is installed now \e[0m"

 fi

done
