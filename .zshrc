### .NET Core
export PATH="$PATH:/usr/local/share/dotnet/dotnet"
export PATH="$PATH:${HOME}/.dotnet/tools"

### anyenv
DISABLE_ANYENV=
if [[ -z "${DISABLE_ANYENV+x}" ]]; then
    eval "$(anyenv init -)"
else
    echo "disable anyenv!"
fi

### github.com/x-motemen/ghq
export GHQ_ROOT="${HOME}/Project"

### GnuPG
export GPG_TTY=$(tty)

### source ~/.zshrc.d
local RC_FILE_DIR="${HOME}/.zshrc.d"
if [[ -e $RC_FILE_DIR ]]; then
    for RC_FILE in ${RC_FILE_DIR}/*.sh; do
        source $RC_FILE
    done
fi

### fish
if [[ -o interactive ]]; then
    exec fish
fi

