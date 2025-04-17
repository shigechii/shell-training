#!/bin/bash

DATA_FILE_PATH="$(cd "$(dirname "$0")/data" && pwd)/data_file"

# 標準出力結果がファイルに書き込まれる。
# ファイルが存在しない場合、ファイルが作成される
echo "aaa" > $DATA_FILE_PATH

rm $DATA_FILE_PATH

sleep 3

# echo "bbb" > $DATA_FILE_PATH と同じ結果
echo "bbb" 1> $DATA_FILE_PATH
