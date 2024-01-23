#!/bin/sh

# Source the check-sudo.sh script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$SCRIPT_DIR/lib/check-sudo.sh"

# Update and upgrade
echo "Updating and upgrading packages..."
apt update
apt upgrade -y

# Install packages
echo "Installing required packages..."
apt install -y build-essential \
      openssh-client openssh-server \
      curl wget zip unzip git htop tmux zsh

apt autoremove -y

git clone https://github.com/xy69/remote.git