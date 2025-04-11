#!/bin/bash

DATA_FILE_PATH="$(cd "$(dirname "$0")/data" && pwd)/members1.txt"

grep "東京" $DATA_FILE_PATH;
