### PATH
export PATH="$PATH:/usr/local/share/dotnet/dotnet"
export PATH="$PATH:${HOME}/.dotnet/tools"
export PATH="$PATH:${HOME}/.nodebrew/current/bin"
export PATH="$PATH:${HOME}/go/bin"

### rbenv
[[ -d ~/.rbenv ]] && \
export PATH=${HOME}/.rbenv/bin:${PATH} && \
eval "$(rbenv init -)"

### github.com/x-motemen/ghq
export GHQ_ROOT="${HOME}/Project"

### GnuPG
export GPG_TTY=$(tty)

### fish
exec fish
