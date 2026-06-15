#!/bin/bash
# Double-click this file (macOS) to launch TERMINAL, or run: ./start.command
cd "$(dirname "$0")"
PORT="${1:-8765}"
echo "Starting TERMINAL on http://127.0.0.1:$PORT ..."
# Open the browser shortly after the server boots
( sleep 1.5; open "http://127.0.0.1:$PORT" >/dev/null 2>&1 ) &
exec python3 server.py --port "$PORT"
