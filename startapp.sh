#!/bin/sh
set -e

# Define Anki data paths (using /config which is mapped to a persistent volume by the base image)
export ANKI_DATA_DIR=/config/.local/share/Anki2
export ANKICONNECT_ID=2055492159
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


# Start Anki
exec anki
