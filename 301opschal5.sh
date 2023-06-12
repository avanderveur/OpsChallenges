#!/bin/bash

# Get current timestamp
timestamp=$(date +"%Y%m%d%H%M%S")

# Print file sizes before compression
echo "File sizes before compression:"
echo "syslog: $(du -h /var/log/syslog)"
echo "wtmp: $(du -h /var/log/wtmp)"
echo

# Compress log files to backup directory
backup_dir="/path/to/backup/directory"
compressed_syslog="$backup_dir/syslog_$timestamp.tar.gz"
compressed_wtmp="$backup_dir/wtmp_$timestamp.tar.gz"
tar -czvf "$compressed_syslog" /var/log/syslog
tar -czvf "$compressed_wtmp" /var/log/wtmp

# Clear log file contents
truncate -s 0 /var/log/syslog
truncate -s 0 /var/log/wtmp

# Compare file sizes
echo "File sizes after compression:"
echo "syslog: $(du -h "$compressed_syslog")"
echo "wtmp: $(du -h "$compressed_wtmp")"
