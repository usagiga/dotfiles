#!/bin/bash

set -euo pipefail

if [[ -n ${DEBUG:+} ]]; then
  set -x
fi

# shellcheck disable=SC2016
echo 'Run `brew bundle --global`'

BREW_PATH="$(which brew || echo '')"
if [[ -z "${BREW_PATH}" ]]; then
    # shellcheck disable=SC2016
    echo 'Homebrew is not installed. After installing it, run `brew bundle --global` manually.'
else
    brew bundle --global
fi
