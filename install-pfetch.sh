#!/bin/sh

# Source the check-sudo.sh script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$SCRIPT_DIR/lib/check-sudo.sh"

# Install pfetch
cargo install pfetch

# Add pfetch to shell
echo 'pfetch' >> ~/.zshrc