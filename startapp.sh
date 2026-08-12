#!/bin/sh
set -e

# Define Anki data paths (using /config which is mapped to a persistent volume by the base image)
export ANKI_DATA_DIR=/config/.local/share/Anki2
export ANKICONNECT_ID=2055492159

# Security check for AnkiConnect
if [ -z "$ANKI_API_TOKEN" ]; then
    echo "ERROR: ANKI_API_TOKEN environment variable must be set. You will need this to manually configure AnkiConnect."
    exit 1
fi
echo "AnkiConnect API Token is required in environment: $ANKI_API_TOKEN"

# Start Anki
exec anki
