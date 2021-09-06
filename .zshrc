#!/bin/zsh

set -euo pipefail

if [[ -n ${DEBUG:+} ]]; then
  set -x
fi

### .NET Core
export PATH="$PATH:/usr/local/share/dotnet/dotnet"
export PATH="$PATH:${HOME}/.dotnet/tools"

### anyenv
eval "$(anyenv init -)"

### github.com/x-motemen/ghq
export GHQ_ROOT="${HOME}/Project"

### GnuPG
GPG_TTY=$(tty)
export GPG_TTY

### source ~/.zshrc.d
RC_FILE_DIR="${HOME}/.zshrc.d"
if [[ -e "$RC_FILE_DIR" ]]; then
    for RC_FILE in "${RC_FILE_DIR}"/*.sh; do
        source "$RC_FILE"
    done
fi

### fish
if [[ -o interactive ]]; then
    exec fish
fi

