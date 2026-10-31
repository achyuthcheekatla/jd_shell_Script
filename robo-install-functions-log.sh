#!/bin/bash

user_id=$(id -u)
#echo $user_id
logs_folder="/var/log/shell_script_practice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "please execute with sudo access"
    exit 1
else 
    echo "executed with sudo userid is  $user_id"
fi

echo "Script started at $(date +"%F %T")"

mkdir -p $logs_folder   # -p if folder is not there then it will create the folder

#Function validate is used 
validate(){
    if [ $1 -ne 0 ]; then  # $? is checking the above cmd Exit code is 0 or 1 , 0 is success
        echo "${2} failed" | tee -a $logs_file
        exit 1
    else
        echo "${2} success" | tee -a $logs_file
    fi
}

dnf install nginx -y &>> $logs_file
validate $? "Nignx"
echo "I am at nginx validate function "

dnf install mysql -y &>> $logs_file
validate $? "mysql"
echo "I am at mysql validate function "

echo "Script completed at $(date +"%F %T")"