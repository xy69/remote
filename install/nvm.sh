#!/bin/zsh

source ~/.zshrc

# Check if nvm is already installed
if command -v nvm &>/dev/null; then
    echo "nvm is already installed."
    exit 0
fi

# Source the check-sudo.sh script
SCRIPT_DIR=$(dirname -- "$(realpath -- "$0")")
. "$SCRIPT_DIR/../lib/check-sudo.sh"

# Install nvm
echo 'Installing nvm...'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash