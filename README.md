# Submission Reminder App

This is a shell-based application that reminds students of pending assignment submissions. 
First, run ./create_environment.sh and enter your name (e.g. "Ced") to create the environment. 
Then, cd into the created directory (e.g. submission_reminder_Ced) and run ./startup.sh to check for pending submissions. 
To update the assignment name, run ./copilot_shell_script.sh, provide the environment name and new assignment name, then cd back into the environment directory and rerun ./startup.sh.

Note: due to relative paths in reminder.sh, you must always run startup.sh from inside the environment folder.
