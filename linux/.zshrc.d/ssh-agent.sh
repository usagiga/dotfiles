#!/bin/bash

set -euo pipefail

if [[ -n ${DEBUG:+} ]]; then
  set -x
fi

### For linux
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    # shellcheck disable=SC1091
    ssh-agent > '/tmp/ssh-agent.env'
fi
if [[ ! "${SSH_AUTH_SOCK:+x}" ]]; then
    # shellcheck disable=SC1091
    source '/tmp/ssh-agent.env' > /dev/null
fi
