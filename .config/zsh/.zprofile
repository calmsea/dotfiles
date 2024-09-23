#!/usr/bin/zsh
#
# login        : zshenv -> zprofile -> zshrc -> zlogin
# interfactive : zshenv -> zshrc
# scripts      : zshenv
#
: zprofile

profile="${XDG_CONFIG_HOME:-${HOME}/.config}/sh/profile"
if [ -f "$profile" ]; then
    . "$profile"
fi

# EOF
