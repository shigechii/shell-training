#!/bin/bash

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
logfile="$PROJECT_ROOT/logs/$(date +"%Y_%m_%d").log"

log_info() {
  local timestamp
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")
  echo "$timestamp [INFO] $1" >> $logfile
}

log_error() {
  local timestamp
  timestamp=$(date +"%Y-%m-%d %H:%M:%S")
  echo "$timestamp [ERROR] $1" >> $logfile
}
