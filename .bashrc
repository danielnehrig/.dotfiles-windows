# .bashrc
export EDITOR="vim"

set -o vi

for i in ~/completion/*; do
	. $i
done

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# custom functions
if [ -f /home/$USER/.bash/functions ]; then
	. /home/$USER/.bash/functions
fi

# custom functions
if [ -f /home/$USER/.bash/aliases ]; then
	. /home/$USER/.bash/aliases
fi

export PATH=$PATH":/home/$USER/bin/:/home/$USER/.local/bin"

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
POWERLINE_NO_SHELL_ABOVE=1


. ~/repos/powerline/powerline/bindings/bash/powerline.sh


eval "$(dircolors ~/.bash/.DIR_COLORS)"

TERM=xterm-256color