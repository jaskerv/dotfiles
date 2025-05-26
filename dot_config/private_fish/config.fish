if status is-interactive
    # Commands to run in interactive sessions can go here
    echo "hiii"
end

# disable greeting
set fish_greeting

# Starship
starship init fish | source

# Zoxide
#zoxide init fish | source
