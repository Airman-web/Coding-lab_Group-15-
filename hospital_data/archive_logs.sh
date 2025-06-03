#!/usr/bin/bash

echo "Select log to archive:"
echo "1) Heart Rate"
echo "2) Temperature"
echo "3) Water Usage"

# read the users choice
read -p "Enter choice (1-3): " choice

# Create the archive log dir for all archives
arch_directory="archived_logs"

if [ ! -d "$arch_directory" ]; then 
	mkdir "$arch_directory"
fi

case $choice in 
	1)
		heart_data_dir="heart_data_archive"
		file_name="heart_rate_"
		file_time_stamp=$(date "+%Y-%m-%d_%H:%M:%S"
