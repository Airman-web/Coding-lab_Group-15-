#!/bin/bash

echo 'Select log file to analyze:'
echo '1) Heart Rate (heart_rate.log)'
echo '2) Temperature (temperature.log)'
echo '3) Water Usage (water_usage.log)'

read -p 'Enter choice (1-3): ' user_choice

# Create reports directory if it doesn't exist for all reports
reports_dir='reports'
if [ ! -d "$reports_dir" ]; then
    mkdir "$reports_dir"
fi

# log files based on user choice
case $user_choice in
    1)
        log_file='active_logs/heart_rate_log.log'
        log_type='Heart Rate'
        ;;
    2)
        log_file='active_logs/temperature_log.log'
        log_type='Temperature'
        ;;
    3)
        log_file='active_logs/water_usage_log.log'
        log_type='Water Usage'
        ;;
    *)
        echo -e "\nInvalid choice. Please enter 1, 2, or 3."
        exit 1
        ;;

esac
