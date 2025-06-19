#!/bin/bash

# Ask for user environment folder
echo "Enter your environment name (submission_reminder_{YourName}):"
read env_name

# Ask for new assignment name
echo "Enter new assignment name:"
read new_assignment

# Replace the ASSIGNMENT value in config.env (line 2)
sed -i "2s/.*/ASSIGNMENT=${new_assignment}/" ${env_name}/config/config.env

# Run startup.sh
bash ${env_name}/startup.sh
