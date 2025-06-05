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

	if [ ! -d "$heart_data_dir" ]; then
		mkdir "$heart_data_dir"
	fi

	file_name="heart_rate_"
	file_time_stamp=$(date "+%Y-%m-%d_%H:%M:%S")
	archive="${file_name}${file_time_stamp}.log"

	if [ -f "active_logs/heart_rate_log.log" ]; then
		echo -e "\nArchiving heart_rate.log... "

		mv "active_logs/heart_rate_log.log" "$arch_directory/$heart_data_dir/$archive"
		echo "successfully archived to $heart_data_dir/$archive"

	else
		echo -e "\nerror: log file doesn't exist"
	fi

	;;

2)
	temperature_data_dir="temperature_data_archive"

	if [ ! -d "$arch_directory/$temperature_data_dir" ]; then
		mkdir "$arch_directory/$temperature_data_dir"
	fi

	file_name="temperature_"
	file_time_stamp=$(date "+%Y-%m-%d_%H:%M:%S")
	archive="${file_name}${file_time_stamp}.log"

	if [ -f "active_logs/temperature_log.log" ]; then
		echo -e "\nArchiving temperature.log... "

		mv "active_logs/temperature_log.log" "$arch_directory/$temperature_data_dir/$archive"
		echo "successfully archived to $temperature_data_dir/$archive"

	else
		echo -e "\nerror: log file doesn't exist"
	fi

	;;
3)
	water_data_dir="water_usage_data_archive"

	if [ ! -d "$arch_directory/$water_data_dir" ]; then
		mkdir "$arch_directory/$water_data_dir"
	fi

	file_name="water_usage"
	file_time_stamp=$(date "+%Y-%m-%d_%H:%M:%S")
	archive="${file_name}${file_time_stamp}.log"

	if [ -f "active_logs/water_usage_log.log" ]; then
		echo -e "\nArchiving water_usage.log... "

		mv "active_logs/water_usage_log.log" "$arch_directory/$water_data_dir/$archive"
		echo "successfully archived to $water_data_dir/$archive"

	else
		echo -e "\nerror: log file doesn't exist"
	fi

	;;
*)
	echo -e "\ninvalid choice: please re-run script and choose 1, 2, 3"
	;;
esac
