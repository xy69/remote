#!/bin/sh

# Source the check-sudo.sh script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$SCRIPT_DIR/lib/check-sudo.sh"

# Install cargo
curl https://sh.rustup.rs -sSf | sh -s -- -y
echo 'source "$HOME/.cargo/env"' >> ~/.zshrc
source ~/.zshrc