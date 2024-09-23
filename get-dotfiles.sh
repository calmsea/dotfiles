#!/bin/sh
set -e

: ${XDG_BIN_HOME:=$HOME/.local/bin}
: ${XDG_DATA_HOME:=$HOME/.local/share}
PATH="${XDG_BIN_HOME}:$PATH"
YADM=${XDG_BIN_HOME}/yadm

main(){
    if ! which yadm; then
        install_yadm
    fi

    echo '-- yadm version'
    yadm --version

    echo '-- yadm repository'
    if [ ! -d ${XDG_DATA_HOME}/yadm/repo.git ]; then
        yadm clone https://github.com/calmsea/dotfiles.git
    else
        yadm pull
    fi
}

install_yadm(){
    echo '-- install yadm'
    mkdir -p $(dirname $YADM)
    curl -fLo $YADM https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x $YADM
}

#
# Run main
#
main

# EOF
