FROM jlesage/baseimage-gui:ubuntu-24.04-v4

ENV APP_NAME="Anki"
ENV ANKICONNECT_ID=2055492159
# We set HOME to /config so that the jlesage baseimage automatically handles permissions and persistence for us
ENV HOME=/config

# Install dependencies required by Anki Qt6 (from official setup-anki action)
RUN add-pkg wget curl unzip python3 zstd jq ca-certificates xdg-utils \
    shared-mime-info desktop-file-utils hicolor-icon-theme media-types \
    libnss3 libegl1 libxkbcommon-x11-0 libxcb-icccm4 libxcb-image0 \
    libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 \
    libopengl0 libglib2.0-0 libxcb-xinerama0 libxcb-cursor0 fontconfig \
    libgl1 libxcomposite1 libxrandr2 libxext6 libsm6 libasound2t64 \
    libdbus-1-3 libgstreamer-gl1.0-0 libgstreamer-plugins-base1.0 libgstreamer1.0-0 \
    libpulse-mainloop-glib0 libxcursor1 libxdamage1 libxi6 libxkbcommon0 \
    libxkbfile1 libxrender1 libxtst6 libminizip1 libsnappy1v5 \
    libgbm1 libdrm2 libx11-xcb1 libice6 libxfixes3 libgtk-3-0 libspeechd2 libflite1 \
    libwayland-client0 libwayland-cursor0 libwayland-egl1 libnspr4 libpulse0 \
    libbrotli1 libbz2-1.0 libexpat1 libfreetype6 liblcms2-2 libopus0 libpango-1.0-0 \
    libtiff6 libudev1 libwebp7 libwebpdemux2 libwebpmux3 libxcb-dri3-0 libxcb-glx0 \
    libxcb-render0 libxcb-shape0 libxcb-shm0 libxcb-sync1 libxcb-xfixes0 libxcb-xkb1 \
    libxcb1 zlib1g libzstd1 libgdk-pixbuf-2.0-0 libcups2t64 libgstreamer-plugins-bad1.0-0 libx11-6
    
# Ensure .mjs is recognized properly by python mimetypes used in Anki's local web server
RUN echo "application/javascript mjs" >> /etc/mime.types

# Set Anki Version (Hardcoded to avoid GitHub API rate limits during build)
ARG ANKI_VERSION=26.08.1
ENV ANKI_VERSION=${ANKI_VERSION}

# Disable QtWebEngine sandbox to prevent crashes in Docker environments
ENV QTWEBENGINE_CHROMIUM_FLAGS="--no-sandbox"

# Download and install Anki
WORKDIR /tmp
RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "aarch64" ]; then \
        SUFFIX="linux-aarch64"; \
    elif wget -q --spider https://github.com/ankitects/anki/releases/download/${ANKI_VERSION}/anki-${ANKI_VERSION}-linux-x86_64.tar.zst; then \
        SUFFIX="linux-x86_64"; \
    else \
        SUFFIX="linux-qt6"; \
    fi && \
    echo "Fetching Anki version: ${ANKI_VERSION} with suffix ${SUFFIX} for architecture ${ARCH}" && \
    wget -q --no-check-certificate https://github.com/ankitects/anki/releases/download/${ANKI_VERSION}/anki-${ANKI_VERSION}-${SUFFIX}.tar.zst && \
    tar -xf anki-${ANKI_VERSION}-${SUFFIX}.tar.zst && \
    EXTRACTED_DIR=$(find . -maxdepth 1 -type d -name "anki-*" | head -n 1) && \
    cd "$EXTRACTED_DIR" && \
    ./install.sh && \
    cd / && \
    rm -rf /tmp/*

# Download and prepare custom AnkiConnect plugin directly from the repository
RUN wget -qO- https://github.com/devsdocs/anki-connect/archive/refs/heads/master.tar.gz | tar xz -C /tmp && \
    mkdir -p /opt/custom_anki_connect && \
    cp -r /tmp/anki-connect-master/plugin/. /opt/custom_anki_connect/ && \
    rm -rf /tmp/anki-connect-master

# Copy our custom startup script that the baseimage will execute
COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh

# Expose Custom AnkiConnect API port
EXPOSE 8766
