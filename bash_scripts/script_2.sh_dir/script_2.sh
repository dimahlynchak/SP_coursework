#!/bin/bash

target_dir="."

for item in "$target_dir"/*; do
    if [[ -d "$item" ]]; then
        echo "$item є директорією."
    elif [[ -f "$item" ]]; then
        new_dir="${item}_dir"
        mkdir -p "$new_dir"
        mv "$item" "$new_dir"
        echo "$item переміщено до $new_dir."
    fi
done
