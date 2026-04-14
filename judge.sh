#!/bin/bash

INPUT="input.txt"
EXPECTED="output.txt"
PROGRAM="main.py"
ACTUAL="actual.txt"

trap "rm -f $ACTUAL" EXIT

python3 "$PROGRAM" < "$INPUT" > "$ACTUAL" 2> /dev/null

# 正常終了 -> 0  異常終了 -> 0以外
PY_STATUS=$?

if [ $PY_STATUS -ne 0 ]; then
    echo "RE"
    exit 1
fi

diff -q "$EXPECTED" "$ACTUAL" > /dev/null

# 完全一致　-> 0  差異あり -> 1
DIFF_STATUS=$?

if [ $DIFF_STATUS -eq 0 ]; then
    echo "AC"
else
    echo "WA"
fi
