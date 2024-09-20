#!/bin/bash

#!/bin/bash

R="\e[31m"
#Y=
G="\e[32m"
N="\e[0m"

 userid=$(id -u)


usercheck() {
    
    if [ $userid -ne 0 ]
 
 then 

 echo "Please execute the task with root privileges"

 exit

fi  }


for packagename in $@

do 

$usercheck

 dnf list installed $packagename

if [ $? -eq 0 ]

 then echo -e " $R $packagename is already installed $N "

 else 

 yum install $packagename -y

 echo -e " $G $packagename is getting installed $N "

 
fi

done
