if status is-interactive
    # Commands to run in interactive sessions can go here
    if test -z "$SSH_AUTH_SOCK"
        # Start ssh-agent
        eval (ssh-agent -c ^/dev/null 2^&1)
    end
end

# disable greeting
set fish_greeting

# Starship
starship init fish | source

# Zoxide
#zoxide init fish | source
