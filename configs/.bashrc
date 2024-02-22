# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
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

# >>> xmake >>>
[[ -s "$HOME/.xmake/profile" ]] && source "$HOME/.xmake/profile" # load xmake profile
# <<< xmake <<<

# Aliases
alias cls=clear
alias cdp="cd ~/programming/"
alias update="sudo dnf -y update && sudo dnf -y upgrade && sudo dnf -y autoremove && flatpak -y update"
alias up="sudo dnf5 -y update && sudo dnf5 -y upgrade && sudo dnf5 -y autoremove && flatpak -y update"
alias newshell="env GNOME_SHELL_SLOWDOWN_FACTOR=2 MUTTER_DEBUG_DUMMY_MODE_SPECS=1024x768 dbus-run-session -- gnome-shell --nested"
alias newenv=newshell
alias lg=lazygit
alias clean="sudo dnf5 clean all"
alias in="sudo dnf5 install"
alias info="sudo dnf5 info"
alias l="ls -al"

# Starship init
eval "$(starship init bash)"

. "$HOME/.cargo/env"

# Go
export PATH=$PATH:/usr/local/go/bin

# pnpm
export PNPM_HOME="/home/michal/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
