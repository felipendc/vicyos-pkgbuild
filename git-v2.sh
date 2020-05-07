#!/bin/bash

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

read input

# It will print the output of the command "date" and and a message containing the details and commit text
output=$(date)

# This will print the date and the hour that this project was uploaded to github
git commit -m "$input: ($output)"

# Push the local files to github

git push -u origin master


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
