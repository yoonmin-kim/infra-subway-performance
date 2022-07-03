#!/bin/bash

SCRIPT_PATH=$(dirname "$0")

find "$SCRIPT_PATH" -name '*.js' ! -path "$SCRIPT_PATH/executor/*" | while IFS= read -r MONITORING_SCRIPT_FILE
do
  NAME="$(basename "$MONITORING_SCRIPT_FILE" .js)"
  OUTPUT_PATH=$(dirname "$MONITORING_SCRIPT_FILE")

#  mkdir -p "$OUTPUT_PATH/before"
  mkdir -p "$OUTPUT_PATH/after"
#  k6 run "$MONITORING_SCRIPT_FILE" > "$OUTPUT_PATH/before/$NAME.log"
  k6 run "$MONITORING_SCRIPT_FILE" > "$OUTPUT_PATH/after/$NAME.log"
done
