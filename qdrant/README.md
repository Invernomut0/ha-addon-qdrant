# Qdrant Home Assistant Addon

Qdrant è un database vettoriale open source, ideale per applicazioni AI e ricerca semantica. Questo addon lo rende disponibile come servizio persistente in Home Assistant.

## Caratteristiche
- **Persistenza**: tutti i dati sono salvati in `/data` (montato da Home Assistant)
- **Porta configurabile**: puoi scegliere la porta TCP (default 6333)
- **Zero fronzoli**: nessun servizio extra, solo Qdrant puro
- **Compatibile OpenClaw**: pronto per l'integrazione

## Configurazione
Nel file `config.yaml` puoi impostare la porta desiderata:
```yaml
options:
  port: 6333
```

## Avvio
L'addon avvia Qdrant con:
- storage su `/data`
- porta configurabile

## Struttura
```
ha-addon-qdrant/
├─ qdrant/
│  ├─ Dockerfile
│  ├─ config.yaml
│  ├─ run.sh
│  └─ README.md
└─ repository.yaml
```

## Uso
1. Installa l'addon tramite repository personalizzato
2. Configura la porta se necessario
3. Avvia l'addon
4. Qdrant sarà accessibile su `http://<homeassistant>:<porta>`

## Note
- Tutti i dati sono persistenti in `/data`
- Nessun dato viene perso tra i riavvii
- Nessun servizio aggiuntivo installato

## Licenza
MIT
