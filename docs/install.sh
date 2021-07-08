#!/bin/bash
set -euo pipefail

ESC=$(printf '\033')
RESET="${ESC}[0m"
BOLD="${ESC}[1m"
GREEN="${ESC}[32m"
CYAN="${ESC}[36m"

INSTALL_DIR=${HOME}/Project/github.com/usagiga/dotfiles
IGNORE_PATHS=".git docs"

function main() {
    # Use OS specific dirs
    OS_NAME=$(uname -s)
    if [[ $OS_NAME == "Darwin" ]]; then
        # If MacOS, ignore Linux
        IGNORE_PATHS="$IGNORE_PATHS linux"
    elif [[ $OS_NAME == "Linux" ]]; then
        # If Linux, ignore MacOS
        IGNORE_PATHS="$IGNORE_PATHS darwin"
    else
        echo "$OS_NAME is not supported."
        exit 1
    fi

    # Clone or pull repo
    mkdir -pv "$INSTALL_DIR"
    if [[ ! -e "${INSTALL_DIR}/.git" ]]; then
        git clone 'https://github.com/usagiga/dotfiles.git' "$INSTALL_DIR"
    else
        cd "$INSTALL_DIR"
        git pull
    fi

    genSymlinks ${INSTALL_DIR} ${HOME}
}

# Create symlinks recursively
function genSymlinks() {
    local SRC_DIR=$1
    local DST_DIR=$2
    local DOT_PATHS=$(ls -A ${SRC_DIR})
    for DOT_PATH in $DOT_PATHS; do
        local SRC_PATH="${SRC_DIR}/${DOT_PATH}"
        local DST_PATH="${DST_DIR}/${DOT_PATH}"

        # if it should be ignored, ignore it
        for IGNORE in $IGNORE_PATHS; do
            if [[ "${INSTALL_DIR}/${IGNORE}" = "${SRC_PATH}" ]]; then
                # continue outer `for` loop
                continue 2
            fi
        done

        # If source is directory, make it
        if [ -d "${SRC_PATH}" ]; then
            echo "${CYAN}> mkdir $DST_PATH${RESET}"
            if [[ -e $DST_PATH ]]; then
                echo 'directory exists. skipped'
            else
                mkdir -p "${DST_PATH}"
            fi

            genSymlinks ${SRC_PATH} ${DST_PATH}
            continue
        fi

        # If source is file, create it as symlink
        if [[ -f "${SRC_PATH}" ]]; then
            echo "${CYAN}> create symlink $DST_PATH${RESET}"
            if [[ -e "$DST_PATH" ]]; then
                echo 'symlink exists. skipped'
                continue
            fi
            ln -s ${SRC_PATH} ${DST_PATH}
        fi
    done
}

# run scripts (WIP)
function runScripts() {
    # Run `brew bundle --global`
    BREW_PATH="$(which brew || echo '')"
    if [[ -z "${BREW_PATH}" ]]; then
        echo 'Homebrew is not installed. After installing it, run `brew bundle --global` manually.'
    else
        # brew bundle --global
        echo 'brew bundle'
    fi
}

main
