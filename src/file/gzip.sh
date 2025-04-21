#!/bin/bash

VOICE_DATA_FILE_PATH="$(cd "$(dirname "$0")/data" && pwd)/voice1.m4a"

ls -la data

# -v オプションをつけることで、圧縮率を表示する
gzip -v $VOICE_DATA_FILE_PATH
