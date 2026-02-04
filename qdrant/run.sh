#!/bin/bash
set -e

# Legge la porta dal file di opzioni generato da Home Assistant
PORT=$(jq -r .port /data/options.json 2>/dev/null || echo 6333)

# Avvia Qdrant con persistenza su /data e porta configurabile
exec /qdrant/qdrant --config-path /config.yaml --storage /data --service-port "$PORT"
