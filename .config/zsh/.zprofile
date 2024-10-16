#!/usr/bin/zsh

LOCAL_BIN_DIR="${HOME}/.local/bin"
if [ ${PATH} = ${PATH#"${LOCAL_BIN_DIR}"} ]; then
  export PATH="${LOCAL_BIN_DIR}:${PATH}"
fi

# EOF
