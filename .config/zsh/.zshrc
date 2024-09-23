#!/usr/bin/zsh
#
# login        : zshenv -> zprofile -> zshrc -> zlogin
# interfactive : zshenv -> zshrc
# scripts      : zshenv
#
: zshrc

test -d "$XDG_STATE_HOME/zsh" || mkdir -p "$XDG_STATE_HOME/zsh"
test -d "$XDG_CACHE_HOME/zsh" || mkdir -p "$XDG_CACHE_HOME/zsh"
test -d "$XDG_DATA_HOME/zsh"  || mkdir -p "$XDG_DATA_HOME/zsh"

DIRCOLORS_CONFFILE="${XDG_CONFIG_HOME}/nordtheme/dircolors/src/dir_colors"

HISTFILE="$XDG_STATE_HOME/zsh/history"

fpath=($XDG_DATA_HOME/yadm-project/completion/zsh $fpath)
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

autoload -Uz promptinit
promptinit
prompt walters

#
bindkey -e

#
autoload -Uz up-line-or-biginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

#
# alias
#
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    if [ -r "$DIRCOLORS_CONFFILE" ]; then
        eval "$(dircolors -b $DIRCOLORS_CONFFILE)"
    else
        eval "$(dircolors -b)"
    fi
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# EOF
