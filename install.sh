#!/bin/sh

INSTALL_PATH="/opt/remote"

# Clone the repository
sudo git clone https://github.com/xy69/remote.git "$INSTALL_PATH"

# Make all scripts executable
find "$INSTALL_PATH" -type f -name '*.sh' -exec chmod +x {} +