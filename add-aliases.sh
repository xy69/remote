#!/bin/sh

# Source the check-sudo.sh script
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)
. "$SCRIPT_DIR/lib/check-sudo.sh"

# Add aliases to the end of .zshrc
echo 'Adding aliases...'
echo 'alias so="source ~/.zshrc"' >> ~/.zshrc
echo 'alias _sudo="sudo -E env \"PATH=$PATH\""' >> ~/.zshrc