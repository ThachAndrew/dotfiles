#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=/usr/bin/vim
export LANG='en_US.UTF-8'

# use if below doesn't work
#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

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

# custom prompt statement
PS1='┌─\[\e[38;5;141m\][\u@\h]\[\e[00m\]:\[\e[1;32m[\w]\e[00m\]\n└─$ '

# use for ucsc servers
#export PATH="/soe/anthach/.local/bin:$PATH"

# used for some GPU accelerated terminal sessions
export TERM=xterm

# save all history
HISTCONTROL=ignoredups:ignorespace
HISTFILESIZE='INFINITE'
HISTSIZE='INFINITE'
export PROMPT_COMMAND='history -a'
