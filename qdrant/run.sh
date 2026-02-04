#!/bin/bash
set -e

# Legge la porta dal file di opzioni generato da Home Assistant
PORT=$(jq -r .port /data/options.json 2>/dev/null || echo 6333)

# Imposta la directory di storage su /data
export QDRANT__STORAGE__STORAGE_PATH=/data

# Imposta la porta HTTP tramite variabile d'ambiente
export QDRANT__SERVICE__HTTP_PORT="$PORT"

# Avvia Qdrant con persistenza su /data e porta configurabile
exec /qdrant/qdrant
