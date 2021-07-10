echo 'Run `brew bundle --global`'

BREW_PATH="$(which brew || echo '')"
if [[ -z "${BREW_PATH}" ]]; then
    echo 'Homebrew is not installed. After installing it, run `brew bundle --global` manually.'
else
    brew bundle --global
fi
