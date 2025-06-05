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


