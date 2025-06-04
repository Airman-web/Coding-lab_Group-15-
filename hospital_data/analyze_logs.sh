#!/bin/bash
echo "Select log file to analyze:"
echo "1) Heart Rate (heart_rate.log)"
echo "2) Temperature (temperature.log)"
echo "3) Water Usage (water_usage.log)"
read -p  "Enter choice (1-3): " choice 
case $choice in 
	file="hospital_data/active_logs/heart_rate.log"; ;


