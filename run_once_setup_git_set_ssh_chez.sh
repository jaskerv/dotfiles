#!/bin/bash

# 1. Get the path to your chezmoi source directory.
CHEZMOI_SOURCE_DIR=$(chezmoi source-path)

# 2. Change into that directory.
# This cd is part of the script and is not interactive.
cd "$CHEZMOI_SOURCE_DIR"

# 3. Now run your git commands.
echo "Swapping git remote from HTTPS to SSH..."
git remote remove origin
git remote add origin git@github.com:jaskerv/dotfiles.git

echo "Done. Current remotes:"
git remote -v
