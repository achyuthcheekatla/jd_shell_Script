#!/bin/bash

user_id=$(id -u)
echo $user_id

if [ $user_id -ne 0 ]; then
    echo "please execute with sudo access"
    exit 1
else 
    echo "executed with sudo userid is  $user_id"
fi

dnf install nginx -y

if [ $? -ne 0 ]; then  # $? is checking the above cmd Exit code is 0 or 1 , 0 is success
    echo "Nginx is failed to install"
    exit 1
else
    echo "Nginx is installed successfully"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then  # $? is checking the above cmd Exit code is 0 or 1 , 0 is success
    echo "mysql client is failed to install"
    exit 1
else
    echo "mysql client is installed successfully"
fi
echo "Script Execution Completed"