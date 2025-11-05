#!/bin/bash

DB_NAME="project"
DB_USER="admin"
DB_PASS="redhat12345"
BACKUP_DIR="/backups"
DB_HOST="your-rds-endpoint.amazonaws.com"
TIMESTAMP=$(date +"%F_%T")


mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/$DB_NAME_$TIMESTAMP.sql

if (( $? == 0 )); then
  echo "Database backup successful: $BACKUP_DIR/$DB_NAME_$TIMESTAMP.sql"
else
  echo "Database backup failed."
  exit 1
fi

S3_BUCKET="s3://your-bucket-name"
REGION="us-west-2"

# Sync files to S3
aws s3 sync $BACKUP_DIR/$DB_NAME_$TIMESTAMP.sql --region $REGION

# Check if sync was successful
if [ $? -eq 0 ]; then
  echo "Files synced to S3 bucket successfully."
else
  echo "Failed to sync files to S3 bucket."
  exit 1
fi


# we can also put this script via cron job
# ***** /path_of_the_script