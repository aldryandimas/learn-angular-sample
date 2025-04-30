FROM cypress/browsers:node-22.15.0-chrome-135.0.7049.114-1-ff-137.0.2-edge-135.0.3179.85-1

FROM gitpod/workspace-full-vnc

ENV CYPRESS_CACHE_FOLDER=/workspace/.cypress-cache

# Install Cypress dependencies
RUN sudo apt-get update \
    && sudo DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libgtk2.0-0 \
    libgtk-3-0 \
    libnotify-dev \
    libnss3 \
    libxss1 \
    libasound2 \
    libxtst6 \
    xauth \
    xvfb \
    && sudo rm -rf /var/lib/apt/lists/*
