# Hospital Log Archiving & Analysis Scripts

This project contains two Bash scripts `archive.sh` and `analyze.sh` used to manage and analyze hospital data logs such as heart rate, temperature, and water usage. These scripts simulate how patient data or facility readings are collected, stored, and interpreted in a simple command-line environment.

---

## 📁 Project Structure

```bash
hospital_data
├── archive.sh               # Script for archiving logs
├── analyze.sh               # Script for analyzing currentlog data
├── heart_monitor.py              # Script for generating heart data log
├── temp_sensor.py               # Script for generating temperature log
├── water_usage.py               # Script for generating water log
├── active_logs/             # Directory for active log files to be archived or analyzed
|   ├── hear_rate.log
|   ├── temperature.log
|   ├── water_usage.log
├── archived_logs/           # Output directory for archived logs (created automatically)
│   ├── heart_data_archive/
│   ├── temperature_data_archive/
│   └── water_usage_data_archive/
└── reports/                 # Output directory for generated analysis reports
    └── analysis_report.txt

```
## Scripts Overview
### 1. archive.sh
This script allows the user to select a log file (heart rate, temperature, or water usage) and archive it with a timestamp.
### Features:
- Menu-driven selection (options 1–3)
- Timestamps the archive file (e.g., heart_rate_2025-06-05_14:23:00.log)
- Organizes archived logs by type into subfolders
- Moves logs from active_logs/ to archived_logs/<log_type>/

Example:

```
$ ./archive.sh
```
Select log to archive:
1) Heart Rate
2) Temperature
3) Water Usage
Enter choice (1-3): 1

Archiving heart_rate.log...
Successfully archived to archived_logs/heart_data_archive/heart_rate_2025-06-05_14:23:00.log

### 2. analyze.sh
This script analyzes a current log file in active_logs/ and generates a report containing:
- Device name occurrence counts
- First and last timestamps for each device
- A timestamped report written to reports/analysis_report.txt
### Features:
Works with any of the three log types
- Automatically creates the reports/ directory
- Uses `awk`, `sort`, `uniq`, and `grep` to extract and summarize data

Example Output:
```
Analysis Report - Heart Rate
---------------------------------

Device: HeartRate_Monitor_A
Total Count: 42
First Entry: 2025-06-03 11:03:21
Last Entry: 2025-06-03 11:07:45

Device: HeartRate_Monitor_B
Total Count: 39
First Entry: 2025-06-03 11:03:21
Last Entry: 2025-06-03 11:07:40
```

## How to Use
Ensure you have executable permission:
```
chmod +x archive.sh analyze.sh
```

