if status is-interactive
    # Commands to run in interactive sessions can go here
end

# disable greetingAdd commentMore actions
set fish_greeting

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Starship
starship init fish | source

# Zoxide
zoxide init fish | source
