#!/bin/bash
# Load configuration and functions
source "$(dirname "$0")/config/config.env"
source "$(dirname "$0")/modules/functions.sh"
bash "$(dirname "$0")/app/reminder.sh"
