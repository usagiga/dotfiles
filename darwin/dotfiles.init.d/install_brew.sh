echo 'Run `brew bundle --global`'

BREW_PATH="$(which brew || echo '')"
if [[ -z "${BREW_PATH}" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --global

