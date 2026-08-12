FROM jlesage/baseimage-gui:ubuntu-22.04-v4.6.3

ENV APP_NAME="Anki"
ENV ANKICONNECT_ID=2055492159
# We set HOME to /config so that the jlesage baseimage automatically handles permissions and persistence for us
ENV HOME=/config

# Install dependencies required by Anki Qt6
RUN add-pkg wget curl unzip python3 zstd jq ca-certificates xdg-utils \
    shared-mime-info desktop-file-utils hicolor-icon-theme \
    libnss3 libegl1 libxkbcommon-x11-0 libxcb-icccm4 libxcb-image0 \
    libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 \
    libopengl0 libglib2.0-0 libxcb-xinerama0 libxcb-cursor0

# Set Anki Version (Hardcoded to avoid GitHub API rate limits during build)
ARG ANKI_VERSION=24.06.3
ENV ANKI_VERSION=${ANKI_VERSION}

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

# Copy our custom startup script that the baseimage will execute
COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh

# Expose AnkiConnect API port (Port 5800 for the Web GUI is already exposed by the base image)
EXPOSE 8765
