#!/bin/bash

user_id=$(id -u)
echo $user_id

if [ $user_id -ne 0 ]; then
    echo "please execute with sudo access"
else 
    echo "executed with sudo userid is  $user_id"
fi

dnf install nginx -y

echo "Exit"