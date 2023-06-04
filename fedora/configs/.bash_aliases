
alias cls=clear
alias cdp="cd ~/programming/"

# Packiging
alias update="sudo dnf -y update && sudo dnf -y upgrade && sudo dnf -y autoremove && flatpak -y update"
alias up="sudo dnf5 -y update && sudo dnf5 -y upgrade && sudo dnf5 -y autoremove && flatpak -y update"

# Gnome
alias newshell="env GNOME_SHELL_SLOWDOWN_FACTOR=2 MUTTER_DEBUG_DUMMY_MODE_SPECS=1024x768 dbus-run-session -- gnome-shell --nested"
alias newenv=newshell
