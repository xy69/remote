#!/bin/zsh

source ~/.zshrc

# Check if neovim is already installed
if command -v nvim &>/dev/null; then
    echo "neovim is already installed."
    exit 0
fi

# Source the check-sudo.sh script
SCRIPT_DIR=$(dirname -- "$(realpath -- "$0")")
. "$SCRIPT_DIR/../lib/check-sudo.sh"

# Install Neovim
# Prereqs: https://github.com/neovim/neovim/blob/master/BUILD.md#build-prerequisites
apt install -y ninja-build gettext cmake unzip curl
apt autoremove -y

git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release
make install