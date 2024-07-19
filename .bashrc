#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /etc/profile

export EDITOR=/usr/bin/vim
export LANG='en_US.UTF-8'

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Set up socket for ssh-agent.
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# save all history
HISTCONTROL=ignoredups:ignorespace
HISTFILESIZE='INFINITE'
HISTSIZE='INFINITE'
export PROMPT_COMMAND='history -a'
