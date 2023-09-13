#!/bin/bash

working_directory="/var/www/autointerdel.ddns.net/wordpress/wp-content/themes"
log_file="/var/log/deployment.log"

log_message() {
  local message="$1"
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $message" >> "$log_file"
}

cd "$working_directory" || { log_message "Error: Could not change to working directory"; exit 1; }

log_message "Starting deployment process"

if sudo git pull > /dev/null 2>&1; then
  log_message "Git pull successful"
else
  log_message "Error: Git pull failed"
  exit 1
fi

log_message "Changing ownership to www-data"
if sudo chown -R www-data:www-data "$working_directory"; then
  log_message "Ownership changed successfully"
else
  log_message "Error: Ownership change failed"
  exit 1
fi

log_message "Deployment Completed"