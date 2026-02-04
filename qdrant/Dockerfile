# Dockerfile per Qdrant Home Assistant Addon
FROM qdrant/qdrant:latest

# Crea la cartella dati (Home Assistant monta /data)
VOLUME ["/data"]

# Copia script di avvio e config
COPY run.sh /run.sh
COPY config.yaml /config.yaml
RUN chmod +x /run.sh

# Espone la porta (default 6333, ma sarà configurabile)
EXPOSE 6333

ENTRYPOINT ["/run.sh"]
