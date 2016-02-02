#! /usr/bin/env bash
NUM_LINES=$1
FILE=$2

echo 'The top '$NUM_LINES' words are'

cat $FILE | tr -c '[:alnum:]' '[\n*]' | sort | uniq -c | sort -nr | head -10

echo 'The bottom '$NUM_LINES' words are'

cat $FILE | tr -c '[:alnum:]' '[\n*]' | sort | uniq -c | sort -n | head -10
