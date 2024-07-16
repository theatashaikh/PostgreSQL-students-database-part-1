#!/bin/bash

# This script removes all the white spaces from filenames in the screenshots folder
# and replaces them with underscores ('_').

# Navigate to the screenshots folder using terminal
cd screenshots

# and paste this
# Loop through each file in the current directory (screenshots folder)
for f in *; do
    # Move (rename) the file, replacing spaces in the filename with underscores
    mv "$f" "$(echo "$f" | tr ' ' '_')"
done



# If you want to change filenames in a different directory, make sure to run this script from the base directory

# Define the path to the target directory containing files to be renamed
TARGET_DIR="path/to/screenshots-folder"

# Loop through each file in the target directory
for f in "$TARGET_DIR"/*; do
    # Move (rename) the file, replacing spaces in the filename with underscores
    mv "$f" "$TARGET_DIR/$(basename "$f" | tr ' ' '_')"
done

