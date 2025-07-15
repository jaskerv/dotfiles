# Automatically install fisher if it's not already present.
if not functions -q fisher
  echo "››› fisher not found. Installing..."
  curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
end

# Manage ssh-agent with keychain
keychain --eval --quiet id_ed25519 | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# disable greetingAdd commentMore actions
set fish_greeting

# Add ~/.local/bin to the PATH if it's not already there.
fish_add_path "$HOME/.local/bin"

# Editor
set -gx VISUAL "nvim"
set -gx EDITOR "$VISUAL"

# Mise
mise activate fish | source

# Starship
starship init fish | source

# Zoxide
zoxide init fish | source
