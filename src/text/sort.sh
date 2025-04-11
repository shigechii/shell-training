#!/bin/bash

NUMBER_FILE_PATH="$(cd "$(dirname "$0")/data" && pwd)/number2.txt"
DUPLICATE_LIST_FILE_PATH="$(cd "$(dirname "$0")/data" && pwd)/list.txt"

# 文字列としてソート
sort $NUMBER_FILE_PATH
echo

# 数値としてソート
sort -n $NUMBER_FILE_PATH
echo

# 数値として降順ソート
sort -nr $NUMBER_FILE_PATH
echo

# 重複を削除してソート
sort -u $DUPLICATE_LIST_FILE_PATH
