#!/bin/bash

# Define the word you're looking for
WORD="example"

# Define the directory to search for files
SEARCH_DIR="/path/to/search/directory"

# Define the directory to move matching files to
MOVE_DIR="/path/to/move/files/to"

# Search for files containing the specified word
for file in $(grep -lir "$WORD" "$SEARCH_DIR"); do
    # Move matching files to the destination directory
    mv "$file" "$MOVE_DIR"
done

