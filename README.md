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
