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
		file_time_stamp=$(date "+%Y-%m-%d_%H:%M:%S")
		archive="${file_log}${file_time_stamp}.log"

if [ -f "active_logs/heart_rate_log.log" ]; 
then
	echo "Archiving heart_rate.log... "
	mkdir -p archived_logs/heart_data_archive

	mv "active_logs/heart_rate_log.log" $arch_directory/$heart_data_dir/$archive
	echo "successfully archived to $heart_data_dir/$archive"

else 
	echo "error: log file doesn't exist"
fi
 
;;
*)
	echo "invalid choice: please 1"
	;;
	 2)
		 temperature_data_dir="temperature_data_archive"
		 file_name="temperature_"
		 file_time_stamp=$(data "+%Y-$m-$d_%H:%M:%S")
		 archive="${log_file}${file_time_stamp}.log"

if [ -f "active_logs/temperature_data_log.log" ];
then
	echo "Archiving temperature_log.log..."
	 mkdir -p archived_logs/temperature_data_archive
	mv "active_logs/temperature_log.log" $arch_directory/$temperature_data_dir/$archive
	echo "successfully archived to $temperature_data_dir/$archive"

else
	echo "error: log file doesn't exist"
fi

;;
*)
	echo "invalid choice: please 2"
	;;
	 3) 
		 water_usage_data_dir="water_usage_data_archive"
		 file_name="water_usage_"
		 file_time_stamp=$(data "+%y-$m-$d_%H:%M:%S")
		 archive="${log_file}${file_time_stamp}.log"

if [ -f "active_logs/water_usage_log.log" ];
then 
	echo "Archiving water_usage_log.log..."
	 mkdir -p archived_logs/water_usage_data_archive
	mv "active_logs/water_usage_log.log" $arech_directory/$water_usage_data_dir/$archive
	echo "successfully archived to $water_usage_data_dir/$archive"
else
	echo "error: log file doesn't exist"
fi

;;
*)
	echo "invalid choice: please 3"
	;;
 esac
