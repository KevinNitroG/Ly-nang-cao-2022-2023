#!/bin/bash

# Array of folder names
folders=("Lý cơ bản" "Lý nâng cao")

# Iterate over each folder
for folder in "${folders[@]}"; do
    # Execute the command to calculate folder size
    folder_size=$(du -sh "$folder" | awk '{print $1}')

    # Update the Markdown file with the new folder size
    sed -i "0,/$folder:/s|$folder:.*|$folder: \`$folder_size"B"\`|" README.md
done