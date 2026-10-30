shell Scripting Learnings

github repo created jd_shell_Scripting


# one-time setup, per machine (or per repo with the file flag removed)
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

git init                       # turn the current folder into a git repo
git branch -M main             # name the default branch "main"
git add .                      # stage all changes
git commit -m "my first commit"
git remote add origin <URL>    # point this repo at one on GitHub
git push origin main           # upload commits to the remote repo



echo "# jd_shell_Script" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/achyuthcheekatla/jd_shell_Script.git
git push -u origin main


git add odd_even_numbers.sh ; git commit -m "updated odd_even.sh file commit" ; git push origin main;

git pull


Create an ec2 instance 

aws ec2 run-instances \
    --image-id ami-0220d79f3f480ecf5 \
    --instance-type t3.micro \
    --security-group-ids sg-043444d172056acbd \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=roboshop-mongodb}]'

======================================================================
Assignments needs to be completed
shell-scripting.md  

Assignment1

Hello, World!
Today is: Fri May 23 10:30:00 IST 2026
Running as: ec2-user
Current directory: /home/ec2-user/scripts
---------------------------------------------------------
#!/bin/bash

echo "Hello, World!"
echo "Today is: " $(date)
echo "Running as: " $(whoami)
echo "Current directory: " $(pwd)
---------------------------------------------
Hello, World!
Today is:  Fri Oct 30 20:03:24 UTC 2026
Running as:  ec2-user
Current directory:  /home/ec2-user/learn_shell/jd_shell_Script

======================================================================

Assignment2

Write a script 02-variables.sh that:

Store your name, age, and city in variables
Print a sentence using all three variables
Calculate and print how many years until you turn 60
Change the name variable to a different name and verify only one line needs to change
Expected output:

My name is Siva, I am 28 years old and I live in Hyderabad.
Years until 60: 32
-----------------------------------------
#!/bin/bash

name=Siva
age=28
city=Hyderabad
#attheage=60
years=$((60-$age))

echo "My name is $name, I am $age years old and I live in $city."
echo "Years until 60: " $years

$ sh 02-variables.sh
My name is Siva, I am 28 years old and I live in Hyderabad.
Years until 60:  32



