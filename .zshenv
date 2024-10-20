#!/usr/bin/zsh

if [ -f ${XDG_CONFIG_HOME}/sh/env ]; then
  . ${XDG_CONFIG_HOME}/sh/env
fi

ZDOTDIR=${XDG_CONFIG_HOME}/sh
export ZDOTDIR

# EOF
