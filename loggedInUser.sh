#!/bin/bash

# Set the output file name
output_file="logged_in_users.txt"

# Get the current date
current_date=$(date +"%Y-%m-%d")

# Get the list of users logged in today and write it to the output file
who | grep "$current_date" | awk '{print $1}' | sort | uniq > $output_file
