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
        # shellcheck disable=SC1090
        source "$RC_FILE"
    done
fi

### default editor
export EDITOR=vim

### fish
case $- in
    *i*)
        exec fish
        ;;
esac
