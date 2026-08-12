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

cat <<EOF > /tmp/ankiconnect_config.json
{
    "apiKey": "$ANKI_API_TOKEN",
    "webBindAddress": "0.0.0.0",
    "webBindPort": 8765,
    "webCorsOriginList": ["*"]
}
EOF

# Update the default config file
cp /tmp/ankiconnect_config.json "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/config.json"

# Update the user config file (meta.json) which overrides config.json
if [ -f "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/meta.json" ]; then
    jq '.config = $newconf[0]' --slurpfile newconf /tmp/ankiconnect_config.json "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/meta.json" > /tmp/meta.json.tmp
    mv /tmp/meta.json.tmp "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/meta.json"
else
    # Create new meta.json using jq to safely insert the config object
    jq -n --argjson newconf "$(< /tmp/ankiconnect_config.json)" '{name: "AnkiConnect", mod: 0, config: $newconf}' > "${ANKI_DATA_DIR}/addons21/${ANKICONNECT_ID}/meta.json"
fi

# Start Anki
exec anki
