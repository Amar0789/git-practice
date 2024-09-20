#!/bin/bash

#!/bin/bash

R="\e[31m"
#Y=
G="\e[32m"
N="\e[0m"

 userid=$(id -u)

checkuser() {

if [ $userid -ne 0 ]
 
 then 

 echo "$R Please execute the task with root privileges $N"

 exit

fi

    
}

$checkuser

dnf list installed $packagename

if [ $? -eq 0 ]

 then echo "$R $packagename is already installed  $N"

 else 

 yum install $packagename -y

 echo "$G $packagename is getting installed $N"

 
fi

done