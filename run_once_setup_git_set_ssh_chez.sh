#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# This will now cause the script to exit if it fails (e.g., due to a lock).
CHEZMOI_SOURCE_DIR="$HOME/.local/share/chezmoi"

# The rest of the script will only run if the above command was successful.
cd "$CHEZMOI_SOURCE_DIR"

echo "Swapping git remote from HTTPS to SSH..."
git remote remove origin
git remote add origin git@github.com:jaskerv/dotfiles.git

echo "Done. Current remotes:"
git remote -v
