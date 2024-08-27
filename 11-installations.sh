#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "please run this script with root priveleges"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "git is not installed,going to install it"
    dnf install git -y
else
    echo "git is already installed, nothing to do.."
fi