# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Powerline-Shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh

export PATH=$HOME/bin:$PATH
#export XDG_RUNTIME_DIR=/run/user/1000
export PATH=$PATH:~/.cache/cfiles/scripts
export EDITOR=/usr/bin/nvim
export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth
export BROWSER="surf"
export RTV_BROWSER="surf"
export NNN_USE_EDITOR=1
export NNN_TRASH=1
export NNN_OPS_PROG=1

alias vim='nvim'
