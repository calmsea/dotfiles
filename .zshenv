#!/usr/bin/zsh

: ${XDG_CONFIG_HOME:="${HOME}/.config"}

if [ -f ${XDG_CONFIG_HOME}/sh/env ]; then
  . ${XDG_CONFIG_HOME}/sh/env
fi

ZDOTDIR=${XDG_CONFIG_HOME}/zsh
export ZDOTDIR

# EOF
