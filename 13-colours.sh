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

dnf install git -y

VALIDATE $?

if [ $? -ne 0 ]
then
    echo "git is not installed,going to install it"
    dnf install git -y
    VALIDATE $? "Installing git"
else
    echo "git is already installed, nothing to do.."
fi

dnf installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed..going to instsll"
    dnf install mysql -y
    VALIDATE $? "installing MySQL"
 else
     echo "MySQL is already installed ,nothing to do"
fi   