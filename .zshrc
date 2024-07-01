### Homebrew
eval $(/opt/homebrew/bin/brew shellenv)

### Zsh completion (Homebrew)
export FPATH="${HOMEBREW_PREFIX}/share/zsh/site-functions:${FPATH}"

### anyenv (deprecated)
# eval "$(anyenv init -)"

# proto
export PROTO_HOME="$HOME/.proto"
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH"

# mise
eval "$(mise activate zsh)"

### go
export GOBIN="$HOME/go/bin"
export PATH="$GOBIN:$PATH"

### .NET Core
export PATH="$PATH:/usr/local/share/dotnet/dotnet"
export PATH="$PATH:${HOME}/.dotnet/tools"

### Rust
export PATH="${HOME}/.cargo/bin:${PATH}"

### Flutter
export FLUTTER_ROOT="$(mise where flutter)"

### Local Binaries
### (e.g. JetBrains IDEs, git subcommands)
export PATH="$PATH:${HOME}/.local/bin"

### aws-vault
export AWS_ASSUME_ROLE_TTL=1h

### github.com/x-motemen/ghq
export GHQ_ROOT="${HOME}/repos"

### GnuPG
export GPG_TTY=$(tty)

### Chrome/Firefox debug unpackking TLS/SSL
# export SSLKEYLOGFILE=${HOME}/Desktop/tls_key.log

### docker on lima
# export DOCKER_HOST=unix://$HOME/docker.sock

### source ~/.zshrc.d
local RC_FILE_DIR="${HOME}/.zshrc.d"
if [[ -e $RC_FILE_DIR ]]; then
    for RC_FILE in ${RC_FILE_DIR}/*.sh; do
        source $RC_FILE
    done
fi

### fish
if [[ -o interactive ]]; then
    exec fish -il
fi
