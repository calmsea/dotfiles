#!/usr/bin/zsh

export HISTFILE="$XDG_STATE_HOME"/zsh/history

autoload -Uz compinit promptinit
mkdir -p "$XDG_CACHE_HOME"/zsh/
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

promptinit
prompt walters

#
bindkey -e

#
autoload -Uz up-line-or-biginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# EOF
