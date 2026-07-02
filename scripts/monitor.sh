#!/usr/bin/env bash
set -euo pipefail

LOG_DIR="${LOG_DIR:-./system-monitor}"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/monitor-$(date +%F-%H%M).log"

{
  echo "===== System Monitoring Report: $(date) ====="
  echo ""
  echo "[CPU Load]"
  uptime
  echo ""
  echo "[Memory Usage]"
  free -h
  echo ""
  echo "[Disk Usage]"
  df -h
} > "$LOG_FILE"

echo "Log saved to $LOG_FILE"