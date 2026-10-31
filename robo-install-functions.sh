#!/bin/bash

user_id=$(id -u)
echo $user_id

if [ $user_id -ne 0 ]; then
    echo "please execute with sudo access"
    exit 1
else 
    echo "executed with sudo userid is  $user_id"
fi

#Function validate is used 
validate(){
    if [ $1 -ne 0 ]; then  # $? is checking the above cmd Exit code is 0 or 1 , 0 is success
        echo "${2} failed"
        exit 1
    else
        echo "${2} success"
    fi
}

dnf install nginx -y
validate $? "Nignx"
echo "I am at nginx validate function "

dnf install mysql -y
validate $? "mysql"
echo "I am at mysql validate function "

echo "Script Execution Completed"