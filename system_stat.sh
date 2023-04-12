#!/bin/bash

# Set the output file name
output_file="system_stats.txt"

# Create the output file and write the header
echo "DATE TIME CPU_USAGE MEMORY_USAGE DISK_USAGE" > $output_file

# Loop indefinitely
while true
do
  # Get the current date and time
  current_time=$(date +"%Y-%m-%d %H:%M:%S")

  # Get the CPU usage as a percentage
  cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}' | awk '{printf "%.2f\n", $1}')

  # Get the memory usage as a percentage
  memory_usage=$(free | awk 'NR==2{printf "%.2f\n", $3/$2*100}')

  # Get the disk usage as a percentage
  disk_usage=$(df -h | awk '$NF=="/"{printf "%s\n", $5}')

  # Write the stats to the output file
  echo "$current_time $cpu_usage% $memory_usage% $disk_usage" >> $output_file

  # Wait for 5 seconds before checking the stats again
  sleep 5
done
