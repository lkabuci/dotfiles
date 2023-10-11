#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Invalid arguments" >&2
    exit 1
fi

source_dir="$1"
dest_dir="$2"

# Create all subdirs
subdirs=$(find "$source_dir" -type d)

# add on each subdir the dest_dir prefix /
subdirs=$(echo "$subdirs" | sed "s|$source_dir|$dest_dir|")

# create all subdirs
echo "$subdirs" | xargs mkdir -p

# find all files inside the source_dir
files=$(find "$source_dir" -type f)

# make symbolic links from src to the appropriate dest dir
echo "$files" | while read file; do
    dest_file=$(echo "$file" | sed "s|$source_dir|$dest_dir|")
    ln -s "$file" "$dest_file"
done
