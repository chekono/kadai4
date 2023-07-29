#!/bin/bash

# 引数のチェック
if [ $# -ne 2 ]; then
  echo "エラー: 引数は2つ必要です"
  exit 1
fi

# 数字かどうかのチェック
if ! echo "$1" | grep -qE '^[0-9]+$'; then
    echo "エラー: 引数は自然数である必要があります"
    exit 1
fi

if ! echo "$2" | grep -qE '^[0-9]+$'; then
    echo "エラー: 引数は自然数である必要があります"
    exit 1
fi

# 最大公約数の計算
gcd(){
  if [ $1 -eq 0 ]; then
    echo $2
  else
    gcd $(($2 % $1)) $1
  fi
}

gcd $1 $2