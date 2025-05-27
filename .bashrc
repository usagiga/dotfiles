# In interactive shell...
case $- in
    *i*)

    ### proto
    export PROTO_HOME="$HOME/.proto"
    export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH"

    ### mise
    # see fish.config

    ### .NET Core
    export PATH="$PATH:/usr/local/share/dotnet/dotnet"
    export PATH="$PATH:${HOME}/.dotnet/tools"

    ### anyenv
    # export DISABLE_ANYENV=
    # if [[ -z ${DISABLE_ANYENV:+x} ]]; then
    #     eval "$(anyenv init -)"
    # else
    #     echo "disable anyenv!"
    # fi

    ### github.com/x-motemen/ghq
    export GHQ_ROOT="${HOME}/repos"

    ### Local Binaries
    ### (e.g. JetBrains IDEs, git subcommands)
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
    exec fish
    ;;
esac

# go
export GOBIN="$HOME/go/bin"
export PATH="$GOBIN:$PATH"
# go
export GOBIN="$HOME/go/bin"
export PATH="$GOBIN:$PATH"