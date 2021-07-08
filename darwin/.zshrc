### .NET Core
export PATH="$PATH:/usr/local/share/dotnet/dotnet"
export PATH="$PATH:${HOME}/.dotnet/tools"

### anyenv
eval "$(anyenv init -)"

### github.com/x-motemen/ghq
export GHQ_ROOT="${HOME}/Project"

### ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > '/tmp/ssh-agent.env'
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source '/tmp/ssh-agent.env' > /dev/null
fi

### GnuPG
export GPG_TTY=$(tty)

### fish
exec fish
