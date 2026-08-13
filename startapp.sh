#!/bin/sh
set -e

# Define Anki data paths explicitly to bypass any XDG_DATA_HOME overrides from baseimage
export ANKI_DATA_DIR=/config/Anki2
# (Optional) The official AnkiConnect (2055492159) can safely coexist since we use port 8766
mkdir -p "$ANKI_DATA_DIR/addons21"

# Copy the custom AnkiConnect addon to the addons directory
rm -rf "$ANKI_DATA_DIR/addons21/custom_anki_connect"
mkdir -p "$ANKI_DATA_DIR/addons21/custom_anki_connect"
cp -r /opt/custom_anki_connect/. "$ANKI_DATA_DIR/addons21/custom_anki_connect/"

# Generate config.json dynamically based on environment variables so the GUI stays perfectly in sync
jq -n \
  --arg apiKey "${ANKICONNECT_APIKEY:-}" \
  --arg webBindAddress "${ANKICONNECT_WEBBINDADDRESS:-0.0.0.0}" \
  --arg webBindPort "${ANKICONNECT_WEBBINDPORT:-8766}" \
  --arg webCorsOriginList "${ANKICONNECT_WEBCORSORIGINLIST:-http://localhost}" \
  '{
    apiKey: (if $apiKey == "" then null else $apiKey end),
    apiLogPath: null,
    webBindAddress: $webBindAddress,
    webBindPort: ($webBindPort | tonumber),
    webCorsOriginList: ($webCorsOriginList | split(",")),
    ignoreOriginList: []
  }' > "$ANKI_DATA_DIR/addons21/custom_anki_connect/config.json"

export BROWSER=/bin/true

# Prevent QtWebEngine from routing localhost requests through any configured proxies
export no_proxy="localhost,127.0.0.1,::1"
export NO_PROXY="localhost,127.0.0.1,::1"

# Guarantee the .mjs MIME type is available to the Python server in the user's home directory
echo "application/javascript mjs" >> /config/.mime.types

# Inject a micro-addon to force the Python mimetypes library to recognize .mjs
# This is necessary because Anki's bundled Python environment might ignore system mime.types files
mkdir -p "$ANKI_DATA_DIR/addons21/mjs_mime_fix"
echo "import mimetypes; mimetypes.add_type('application/javascript', '.mjs')" > "$ANKI_DATA_DIR/addons21/mjs_mime_fix/__init__.py"


# Start Anki and force it to use our explicit data directory
exec anki -b "$ANKI_DATA_DIR"
