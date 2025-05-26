if status is-interactive
    # Commands to run in interactive sessions can go here
    if test -z "$SSH_AUTH_SOCK"
        # Start ssh-agent
        eval (ssh-agent -c)
    end

    if not ssh-add -l | grep -q "^[0-9a-fA-F]"
        # No keys loaded; add default key (adjust the path if your key is elsewhere)
        ssh-add ~/.ssh/id_ed25519
    end
end

# disable greeting
set fish_greeting

# Starship
starship init fish | source

# Zoxide
#zoxide init fish | source
