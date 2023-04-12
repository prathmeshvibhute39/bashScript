#!/bin/bash

# Run the find command and sort the results by file size (in bytes)
# Use head to select the top 10 results
find / -type f -printf "%s %p\n" 2>/dev/null | sort -n -r | head -n 10 > biggest_files.txt

# Print a message confirming that the script has finished
echo "Finished. The results have been saved to biggest_files.txt"
