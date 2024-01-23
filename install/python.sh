#!/bin/zsh

source ~/.zshrc

# Check if python is already installed
if command -v python &>/dev/null; then
    echo "python is already installed."
    exit 0
fi

# Source the check-sudo.sh script
SCRIPT_DIR=$(dirname -- "$(realpath -- "$0")")
. "$SCRIPT_DIR/../lib/check-sudo.sh"

. "$SCRIPT_DIR/pyenv.sh"

source ~/.zshrc

pyenv install 3.12
pyenv global 3.12