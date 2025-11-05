#!/bin/bash

# Variables
LOG_DIR="/var/log/myapp"
NUM_LOGS=5

# Rotate logs
cd $LOG_DIR || { echo "Directory not found: $LOG_DIR"; exit 1; }
ls -1tr | grep ".log" | head -n -$NUM_LOGS | xargs -d '\n' rm -f --

echo "Log rotation completed successfully."
