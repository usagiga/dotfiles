### .NET Core
export PATH="$PATH:/usr/local/share/dotnet/dotnet"
export PATH="$PATH:${HOME}/.dotnet/tools"

### anyenv
eval "$(anyenv init -)"

### github.com/x-motemen/ghq
export GHQ_ROOT="${HOME}/Project"

### Jetbrains IDE
# Turn on jetbrains-toolbox settings -> Tools -> Generate shell scripts
export PATH="${PATH}:${HOME}/.local/bin"

### GnuPG
export GPG_TTY=$(tty)

### source ~/.zshrc.d
RC_FILE_DIR="${HOME}/.zshrc.d"
if [[ -e $RC_FILE_DIR ]]; then
    for RC_FILE in ${RC_FILE_DIR}/*.sh; do
        source $RC_FILE
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
