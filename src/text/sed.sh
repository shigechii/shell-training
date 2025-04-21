#!/bin/bash

# sed stream editor
# 標準入力などを読みながら、その場でテキストの編集・加工を行う

DATA_FILE_PATH="$(cd "$(dirname "$0")/data" && pwd)/members1.txt"

# "女"を含む行を抜き出し、各行について:女: => :女性:に置換
grep "女" $DATA_FILE_PATH | sed 's/:女:/:女性:/';

echo;
# "男"を含む行を抜き出し、各行について:男: => :男性:に置換
grep "男" $DATA_FILE_PATH | sed 's/:男:/:男性:/';

echo;
# :を,に変換
# sedは、デフォルトでは行内で最初に見つかった文字列のみを変更する。
# s/置換前/置換後/g とすることで。該当する全ての文字列を置換する
sed 's/:/,/g' $DATA_FILE_PATH;
