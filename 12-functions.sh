#!/bin/bash

#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "command is..FAILED"
        exit1
    fi
}   

if [ $USERID -ne 0 ]
then
    echo "please run this script with root priveleges"
fi

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