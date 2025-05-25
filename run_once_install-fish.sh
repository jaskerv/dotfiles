#!/usr/bin/env fish

# Check if fisher function exists
if functions -q fisher
    echo "Fisher is installed"
else
    echo "Fisher is not installed"
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
end

