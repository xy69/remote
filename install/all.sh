#!/bin/zsh

# Source the check-sudo.sh script
SCRIPT_DIR=$(dirname -- "$(realpath -- "$0")")
. "$SCRIPT_DIR/../lib/check-sudo.sh"

# ./oh-my-zsh.sh

. "$SCRIPT_DIR/python.sh"

. "$SCRIPT_DIR/node.sh"

. "$SCRIPT_DIR/neovim.sh"

. "$SCRIPT_DIR/pfetch.sh"

# Print instructions for the user
echo "To apply changes to ~/.zshrc, run the following command:"
echo "    source ~/.zshrc"