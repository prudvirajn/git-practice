#!/bin/bash

#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
 CHECK_ROOT(){
    if [ $USERID -ne 0 ]
    
        echo "please run this script with root priveleges"
        exit 1
    fi
 }   

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is...$R FAILED $N"
        exit1
    else
        echo -e "$2 is...$G SUCCESS $N"
    fi
} 
  
 CHECK_ROOT

 #sh 15-loops.sh git mysql nginx
 for package in $@ 
 do
   echo $package
 done