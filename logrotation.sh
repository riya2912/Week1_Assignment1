#!/bin/bash

# Define the log directory, backup directory, and log retention policy

log_dir="/var/log"
backup_dir="/backup/logs"


# Get the current date and time
#current_date=$(date "+%Y%m%d")

# Calculate the date one week ago
#one_week_ago=$(date -d "1 week ago" "+%Y%m%d")

one_hour=$(date -d "1 hour ago" "+%Y%m%d%H%M%S")

# Function to perform log rotation and backup

rotate_and_backup_logs() {
    
	log_file="syslog"
	current_hour=$(date "+%H")
    
    # Check if the log file exists
   
    if [ -f "$log_dir/$log_file" ]; then

        # Rename the existing log file with a timestamp
	 mv "$log_dir/$log_file" "$log_dir/$log_file.$one_hour"
    
        # Create a new empty log file
        touch "$log_dir/$log_file"
    
        # Compress the old log file
        gzip "$log_dir/$log_file.$one_week_ago"
    
        # Move the compressed log file to the backup directory
        mv "$log_dir/$log_file.$one_hour.gz" "$backup_dir/"
    
        echo "Log rotation completed for $log_file."
    
    else
        echo "Log file $log_dir/$log_file not found."
    fi
}

# Rotate and backup logs every hour 

while true; do
	rotate_and_backup_logs
	sleep 3600    # sleep for 1 hour before rotating logs again (3600 seconds)
done

exit 0

