#!/bin/sh

# Source the check-sudo.sh script
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)
. "$SCRIPT_DIR/lib/check-sudo.sh"

# Check if a username is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

NEW_USERNAME="$1"

if ! id "$NEW_USERNAME" &>/dev/null; then
    echo "Creating user $NEW_USERNAME..."
    adduser --disabled-password --gecos "" "$NEW_USERNAME"
    # Allow the user to run sudo without password
    echo "$NEW_USERNAME ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee -a "/etc/sudoers.d/$NEW_USERNAME"
    # Set the shell
    sudo usermod --shell "/bin/zsh" "$NEW_USERNAME"
    touch "/home/$NEW_USERNAME/.zshrc"
else
    echo "User $NEW_USERNAME already exists."
fi

echo "Created new user $NEW_USERNAME."