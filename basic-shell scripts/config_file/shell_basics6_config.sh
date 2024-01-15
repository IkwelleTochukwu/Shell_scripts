#!/bin/bash
# Make a configuration file for the shell_basics6.sh script. Put a logging switch in the config file, 
# logging means writing detailed output of everything the script does to a log file in /tmp.


# shell_basics6_config.sh

# configuration file for shell_basics6_config.sh

# directory where the script can store temporary files
TEMP_DIR="/tmp"

# Logging switch for the script: set to 1 to enable logging, 0 to disable logging
LOGGING_SWITCH=1

# Log file_path
LOG_FILE="$TEMP_DIR/shell_basics6_log.txt"

# Function to check and authenticate file, and make file writeable
check_file() {
    local filename="$1"

    if [ -f $filename ]; then
        if [ "$(ls -l "$filename" | awk '{print $3}')" = $(whoami) ]; then  # this lists the file and checks for ownership
            if [ -w "$filename" ]; then   # check whether the file is writeable
            log You are the owner of this file and the file is writable.
            else
                chmod +w "$filename"   # this makes the file writeable
                log $filename is now writeable.
            fi
        else
        log You are not the owner of this file, and have only read-only access.
        fi
    else
        log $filename is not found.
    fi
}

# Function to log messages
log() {
    if [ "$LOGGING_SWITCH" -eq 1 ]; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
    fi
}