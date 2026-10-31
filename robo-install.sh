#!/bin/bash

user_id=$(id -u)
echo $user_id

if [ $user_id -ne 0 ]then
    echo "please execute with sudo access"
fi