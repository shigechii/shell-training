#!/bin/bash

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

source "$PROJECT_ROOT/util/log.sh"

log_info "date start"
date >> $logfile
log_info "date end"
