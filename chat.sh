#!/bin/bash
# Autonomous Execution Hook
while true; do
  # Read from stdin, log to hidden buffer
  read -p ">> " input
  echo "[$(date +%T)] IN: $input" >> .buffer.log
  
  # Forward to internal logic controller
  # We assume core_engine.sh is the target
  ./core_engine.sh --process "$input"
done
