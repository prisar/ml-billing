#!/bin/bash

# Set default values
PYTHON_SCRIPT="main.py"
NUM_RUNS=10
SLEEP_INTERVAL=0  # seconds
ARGS=""

# Optional: allow arguments to override defaults
while [[ $# -gt 0 ]]; do
  case "$1" in
    -s|--script) PYTHON_SCRIPT="$2"; shift 2 ;;
    -n|--num-runs) NUM_RUNS="$2"; shift 2 ;;
    -d|--delay) SLEEP_INTERVAL="$2"; shift 2 ;;
    --args) ARGS="$2"; shift 2 ;;
    *) echo "Unknown option $1"; exit 1 ;;
  esac
done

# Execution loop
for (( i=1; i<=NUM_RUNS; i++ ))
do
  echo "Run #$i"
  python "$PYTHON_SCRIPT" $ARGS
  if [ "$SLEEP_INTERVAL" -gt 0 ]; then
    sleep "$SLEEP_INTERVAL"
  fi
done

