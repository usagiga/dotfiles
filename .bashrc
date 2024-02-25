### .NET Core
export PATH="$PATH:/usr/local/share/dotnet/dotnet"
export PATH="$PATH:${HOME}/.dotnet/tools"

### anyenv
export DISABLE_ANYENV=
if [[ -z ${DISABLE_ANYENV:+x} ]]; then
    eval "$(anyenv init -)"
else
    echo "disable anyenv!"
fi

### github.com/x-motemen/ghq
export GHQ_ROOT="${HOME}/repos"

### Local Binaries
### (e.g. JetBrains IDEs, git subcommands)
export PATH="${PATH}:${HOME}/.local/bin"

### GnuPG
export GPG_TTY=$(tty)

### pnpm
export PNPM_HOME="${HOME}/.local/share/pnpm"
export PATH="${PNPM_HOME}:${PATH}"

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
