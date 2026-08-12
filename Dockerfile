FROM jlesage/baseimage-gui:ubuntu-22.04-v4.6.3

ENV APP_NAME="Anki"
ENV ANKICONNECT_ID=2055492159
# We set HOME to /config so that the jlesage baseimage automatically handles permissions and persistence for us
ENV HOME=/config

# Install dependencies required by Anki Qt6
RUN add-pkg wget curl unzip python3 zstd jq ca-certificates \
    libnss3 libegl1 libxkbcommon-x11-0 libxcb-icccm4 libxcb-image0 \
    libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 \
    libopengl0 libglib2.0-0 libxcb-xinerama0 libxcb-cursor0

# Download and install Anki (auto-fetch latest version)
WORKDIR /tmp
RUN ANKI_VERSION=$(curl -s https://api.github.com/repos/ankitects/anki/releases/latest | jq -r .tag_name) && \
    echo "Fetching Anki version: ${ANKI_VERSION}" && \
    wget -q --no-check-certificate https://github.com/ankitects/anki/releases/download/${ANKI_VERSION}/anki-${ANKI_VERSION}-linux-qt6.tar.zst && \
    tar -xf anki-${ANKI_VERSION}-linux-qt6.tar.zst && \
    cd anki-${ANKI_VERSION}-linux-qt6 && \
    ./install.sh && \
    rm -rf /tmp/*

# Copy our custom startup script that the baseimage will execute
COPY startapp.sh /startapp.sh
RUN chmod +x /startapp.sh

# Expose AnkiConnect API port (Port 5800 for the Web GUI is already exposed by the base image)
EXPOSE 8765
