#!/bin/sh

# Source the check-sudo.sh script
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)
. "$SCRIPT_DIR/lib/check-sudo.sh"

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
