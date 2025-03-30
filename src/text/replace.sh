#!/bin/bash

DATA_FILE_PATH="$(cd "$(dirname "$0")/data" && pwd)/members1.txt"

# : => ,に置換
cat $DATA_FILE_PATH | tr ":" ","

# 置換対象の文字と、置換後の文字は順番で対応している
echo "ABCDEFG" | tr "ABC" "abc"

# 置換対象の文字と、置換後の文字の数が合わない場合は最後の文字に置換される
echo "ABCDEFG" | tr "ABC" "op"

# -dオプション 文字を削除
cat $DATA_FILE_PATH | head -n 3 | tr -d "0-9"

# 連続する文字を1つに整える
echo "三石      由紀子" | tr -s " "

# 特定の文字以外を削除
echo "AKB48" | tr -cd "0-9"
