#!/usr/bin/env bash
set -euo pipefail
INTERVAL="${1:-10}"
URL="${2:-http://127.0.0.1:5000/health}"
echo "Memantau setiap $INTERVAL detik. Tekan Ctrl+C untuk berhenti."
while true; do
 if curl -fsS "$URL" >/dev/null 2>&1; then
 echo "$(date '+%H:%M:%S') UP"
 else
 echo "$(date '+%H:%M:%S') DOWN"
 fi
 sleep "$INTERVAL"
done
