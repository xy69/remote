#!/bin/zsh

# Source the check-sudo.sh script
SCRIPT_DIR=$(dirname -- "$(realpath -- "$0")")
. "$SCRIPT_DIR/lib/check-sudo.sh"

# Install pfetch
cargo install pfetch

# Add pfetch to shell
echo 'pfetch' >> ~/.zshrc