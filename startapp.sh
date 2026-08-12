#!/bin/sh
set -e

# Define Anki data paths (using /config which is mapped to a persistent volume by the base image)
export ANKI_DATA_DIR=/config/.local/share/Anki2
export ANKICONNECT_ID=2055492159

# Download AnkiConnect if it doesn't exist
if [ ! -d "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}" ]; then
    echo "Downloading AnkiConnect..."
    mkdir -p "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}"
    wget -q https://ankiweb.net/shared/download/${ANKICONNECT_ID} -O /tmp/ankiconnect.zip
    unzip -o /tmp/ankiconnect.zip -d "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}"
    rm /tmp/ankiconnect.zip
fi

# Configure AnkiConnect (API Token & Web Bind)
if [ -z "$ANKI_API_TOKEN" ]; then
    echo "ERROR: ANKI_API_TOKEN environment variable must be set to protect the AnkiConnect API."
    exit 1
fi
echo "AnkiConnect API Token is set."

cat <<EOF > "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/config.json"
{
    "apiKey": "$ANKI_API_TOKEN",
    "webBindAddress": "0.0.0.0",
    "webBindPort": 8765,
    "webCorsOriginList": ["*"]
}
EOF

# Start Anki
exec anki
