#!/bin/zsh

source ~/.zshrc

# Check if cargo is already installed
if command -v cargo &>/dev/null; then
    echo "Cargo is already installed."
    exit 0
fi

# Source the check-sudo.sh script
SCRIPT_DIR=$(dirname -- "$(realpath -- "$0")")
. "$SCRIPT_DIR/../lib/check-sudo.sh"

# Install cargo
curl https://sh.rustup.rs -sSf | sh -s -- -y
echo 'source "$HOME/.cargo/env"' >> ~/.zshrc