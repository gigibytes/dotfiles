if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ~/.config/fish/config.fish

starship init fish | source

# ALIASES (ain't here)
# aliases are defined with alias -s and go to the functions file.

# ENVIRONMENT VARIABLES
set EDITOR nvim

# zoxide setup
zoxide init fish | source
