#!/bin/bash

files_dir="files"
list=$(ls "$files_dir")

for file in $list; do
    first=$(echo "$file" | cut -c1 | tr '[:upper:]' '[:lower:]')
    
    dest_dir="$first"
    mv "$files_dir/$file" "$dest_dir/$file"
done
