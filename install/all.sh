#!/bin/zsh

# Source the check-sudo.sh script
SCRIPT_DIR=$(dirname -- "$(realpath -- "$0")")
. "$SCRIPT_DIR/../lib/check-sudo.sh"

# ./oh-my-zsh.sh

./python.sh

./node.sh

./neovim.sh

./pfetch.sh