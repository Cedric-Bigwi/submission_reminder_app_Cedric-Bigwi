#!/bin/bash

# Prompt for user name
echo "Enter your name:"
read name

# Create main directory
main_dir="submission_reminder_${name}"
mkdir -p ${main_dir}/{app,modules,config,assets,logs}

# Copy provided files into correct locations (assumes you have these files in current folder)
cp reminder.sh ${main_dir}/app/
cp functions.sh ${main_dir}/modules/
cp config.env ${main_dir}/config/
cp submissions.txt ${main_dir}/assets/

# Create startup.sh at the root of the main directory
cat << 'EOF' > ${main_dir}/startup.sh
#!/bin/bash
# Load configuration and functions
source "$(dirname "$0")/config/config.env"
source "$(dirname "$0")/modules/functions.sh"
bash "$(dirname "$0")/app/reminder.sh"
EOF

# Make startup.sh and all other scripts executable
chmod +x ${main_dir}/startup.sh
chmod +x ${main_dir}/app/*.sh
chmod +x ${main_dir}/modules/*.sh

echo "Environment created successfully in ${main_dir}"
