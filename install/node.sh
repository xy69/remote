#!/bin/zsh

source ~/.zshrc

# Check if node is already installed
if command -v node &>/dev/null; then
    echo "node is already installed."
    exit 0
fi

# Source the check-sudo.sh script
SCRIPT_DIR=$(dirname -- "$(realpath -- "$0")")
. "$SCRIPT_DIR/../lib/check-sudo.sh"

./nvm.sh

source ~/.zshrc

# Install node
echo 'Installing node...'
nvm install --lts