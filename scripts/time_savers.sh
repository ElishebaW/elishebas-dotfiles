#!/bin/bash

# Function to find and open the document
open_coding_document() {
       cd ~/Downloads || exit  # Navigate to Downloads folder

    # If not found in Downloads, search the whole home directory
    echo "Searching system for Coding_Interview_tracking..."
    file_path=$(find . -type f -name Coding_Interview_Tracking.xlsx)

    if [ -n "$file_path" ]; then
        echo "Opening: $file_path"
        open "$file_path"
    else
        echo "Document 'Coding_Interview_tracking' not found."
    fi
}

# Function to open Chrome with Spotify
open_spotify() {
    if command -v open >/dev/null 2>&1; then
        open -a "Google Chrome" "https://spotify.com"  # For macOS
    else
        echo "Chrome not found. Please install Google Chrome."
    fi
}

open_time() {
    if command -v open >/dev/null 2>&1; then
        open -a "Google Chrome" "https://track.toggl.com/timer"  # For macOS
    else
        echo "Chrome not found. Please install Google Chrome."
    fi
}

open_weekly_plan() {
    if command -v open >/dev/null 2>&1; then
        open -a "Google Chrome" "$WEEKLY_PLAN_URL"
    else
        echo "Chrome not found. Please install Google Chrome."
    fi
}

open_pomodoro() {
    if command -v open >/dev/null 2>&1; then
        open -a "Google Chrome" "https://pomofocus.io/"  # For macOS
    else
        echo "Chrome not found. Please install Google Chrome."
    fi
}

start_day() {
    open_coding_document
    open_spotify
    open_time
    open_weekly_plan
    open_pomodoro
}