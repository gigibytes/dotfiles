# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#PATH additions
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$HOME/.dotnet:$HOME/.dotnet/tools
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Aliases
alias man="batman"
alias vim="nvim"
alias cat="bat"
alias dnf="dnf5"

# Environment Variables
export EDITOR=nvim
## for flameshot per https://bbs.archlinux.org/viewtopic.php?id=284847
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway

#Prompt customization
#GREEN="\[$(tput setaf 6)\]"
#RESET="\[$(tput sgr0)\]"

#PS1="${GREEN}[$(whoami)@$(hostname)]${RESET}$ "
#PS2='> '

# Starship Prompt

eval "$(starship init bash)"
. "$HOME/.cargo/env"
