#!/bin/sh
#
# when bash
#   login        : (bash_profile > bash_login > profile) .> sh/profile .> bashrc .> sh/bashrc
#   interfactive : bashrc .> sh/bashrc
#   scripts      : 
# when sh
#   login        : profile .> sh/profile
#   interfactive : 
#   scripts      : 
#
: profile

profile="${XDG_CONFIG_HOME:-${HOME}/.config}/sh/profile"
if [ -f "$profile" ]; then
    . "$profile"
fi
