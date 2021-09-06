#!/bin/bash

set -euo pipefail

if [[ -n ${DEBUG:+} ]]; then
  set -x
fi

echo "Enable **env from anyenv in Jetbrains IDE"

ln -s "${HOME}/.anyenv/envs/rbenv" "${HOME}/.rbenv"
ln -s "${HOME}/.anyenv/envs/nodenv" "${HOME}/.nodenv"
ln -s "${HOME}/.anyenv/envs/plenv" "${HOME}/.plenv"
