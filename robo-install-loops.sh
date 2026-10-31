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

for pckg in $@    # here $@ is passing the argumented values while execution of script
do
    dnf list installed ${pckg} &>> $logs_file
    if [ $? -ne 0 ]; then
        echo "install ${pckg}"
        dnf install ${pckg} -y &>> $logs_file
        validate $? "installing ${pckg}"
    else 
        echo "${pckg} is already installed... SKIPPING"
    fi
done

echo "Script completed at $(date +"%F %T")"