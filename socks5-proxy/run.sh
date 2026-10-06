#!/bin/sh
CONFIG="/data/options.json"

PORT=$(jq -r '.port' "$CONFIG")
USERNAME=$(jq -r '.username // empty' "$CONFIG")
PASSWORD=$(jq -r '.password // empty' "$CONFIG")
LOG_TO_FILE=$(jq -r '.log_to_file' "$CONFIG")

ARGS="-host 0.0.0.0 -port ${PORT}"

if [ -n "$USERNAME" ] && [ -n "$PASSWORD" ]; then
    ARGS="${ARGS} -user ${USERNAME} -pass ${PASSWORD}"
    echo "[INFO] Authentication enabled for user: ${USERNAME}"
else
    echo "[WARN] No authentication configured - proxy is open to anyone on the network"
fi

if [ "$LOG_TO_FILE" = "true" ]; then
    ARGS="${ARGS} -log /share/socks5-proxy.log"
    echo "[INFO] Logging to /share/socks5-proxy.log"
fi

echo "[INFO] Starting SOCKS5 proxy on port ${PORT}"

exec /usr/local/bin/socks5-proxy ${ARGS}
