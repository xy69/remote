#!/bin/zsh

source ~/.zshrc

# Check if pfetch is already installed
if command -v pfetch &>/dev/null; then
    echo "pfetch is already installed."
    exit 0
fi

# Source the check-sudo.sh script
SCRIPT_DIR=$(dirname -- "$(realpath -- "$0")")
. "$SCRIPT_DIR/../lib/check-sudo.sh"

. "$SCRIPT_DIR/cargo.sh"

source ~/.zshrc

# Install pfetch
cargo install pfetch

# Add pfetch to shell
echo 'pfetch' >> ~/.zshrc