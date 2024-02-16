#!/bin/bash

# A overly complicated script to create the required directories.

# Define the parent directories
parent_dirs=("configs" "data" "media")

# Create the parent directories if they don't exist
for dir in "${parent_dirs[@]}"; do
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
        echo "Directory '$dir' created."
    else
        echo "Directory '$dir' already exists."
    fi
done

# Define sub-directories for configs, data, and media
config_dirs=("heimdall" "overseerr" "plex" "prowlarr" "radarr" "sabnzbd" "sonarr")
data_dirs=("downloads/incomplete")
media_dirs=("movie" "tv")

# Create sub-directories for configs, data, and media
create_subdirectories() {
    local parent_dir="$1"
    shift
    local sub_dirs=("$@")

    for dir in "${sub_dirs[@]}"; do
        mkdir -p "$parent_dir/$dir"
        if [ $? -eq 0 ]; then
            echo "Sub-directory '$dir' created in '$parent_dir'."
        else
            echo "Failed to create sub-directory '$dir' in '$parent_dir'."
        fi
    done
}

create_subdirectories "configs" "${config_dirs[@]}"
create_subdirectories "data" "${data_dirs[@]}"
create_subdirectories "media" "${media_dirs[@]}"

echo "Directory structure creation completed."
