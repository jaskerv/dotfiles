#!/usr/bin/env fish

# Check if fisher function exists
if functions -q fisher
    echo "Fisher is installed"
else
    echo "Fisher is not installed"
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
end

echo "Installing Fisher Packages"
fisher install kidonng/zoxide.fish
fisher install jorgebucaran/autopair.fish
fisher install meaningful-ooo/sponge
fisher install PatrickF1/fzf.fish
fisher install jhillyerd/plugin-git
fisher install jorgebucaran/replay.fish
fisher install nickeb96/puffer-fish
fisher install acomagu/fish-async-prompt
fisher install gazorby/fish-abbreviation-tips

