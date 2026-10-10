#!/usr/bin/env bash
set -euo pipefail
URL="${1:-http://127.0.0.1:5000/health}"
if curl -fsS "$URL" >/dev/null; then
 echo "UP"; exit 0
else
 echo "DOWN"; exit 2
fi
