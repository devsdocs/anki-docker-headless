#!/bin/sh
set -e

# Define Anki data paths (using /config which is mapped to a persistent volume by the base image)
export ANKI_DATA_DIR=/config/.local/share/Anki2
export ANKICONNECT_ID=2055492159

# Configure AnkiConnect (API Token & Web Bind)
if [ -z "$ANKI_API_TOKEN" ]; then
    echo "ERROR: ANKI_API_TOKEN environment variable must be set to protect the AnkiConnect API."
    exit 1
fi
echo "AnkiConnect API Token is set."

cat <<EOF > /tmp/ankiconnect_config.json
{
    "apiKey": "$ANKI_API_TOKEN",
    "webBindAddress": "0.0.0.0",
    "webBindPort": 8765,
    "webCorsOriginList": ["*"]
}
EOF

echo "Checking if AnkiConnect is installed..."
if [ -d "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}" ]; then
    echo "AnkiConnect directory found. Applying secure configuration..."
    
    # Update the default config file
    cp /tmp/ankiconnect_config.json "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/config.json"
    
    # Update the user config file (meta.json) which overrides config.json
    if [ -f "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/meta.json" ]; then
        echo "Found existing meta.json. Injecting 0.0.0.0 bind..."
        jq '.config = $newconf[0]' --slurpfile newconf /tmp/ankiconnect_config.json "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/meta.json" > /tmp/meta.json.tmp
        mv /tmp/meta.json.tmp "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/meta.json"
    else
        echo "No meta.json found yet. Anki will create it upon next manual configuration."
    fi
    
    echo "--- FINAL config.json ---"
    cat "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/config.json"
    if [ -f "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/meta.json" ]; then
        echo "--- FINAL meta.json ---"
        cat "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/meta.json"
    fi
else
    echo "AnkiConnect is NOT installed yet. Please install add-on ${ANKICONNECT_ID} via the GUI."
fi

# Start Anki
exec anki
