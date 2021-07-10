#!/bin/bash
set -euo pipefail

ESC=$(printf '\033')
RESET="${ESC}[0m"
BOLD="${ESC}[1m"
GREEN="${ESC}[32m"
CYAN="${ESC}[36m"

REPO_ROOT_DIR=${HOME}/Project/github.com/usagiga/dotfiles
IGNORE_PATHS=".git docs darwin linux scripts dotfiles.init.d LICENSE README.md"

function main() {
    # Clone or pull repo
    echoH1 'Clone or pull github.com/usagiga/dotfiles'
    mkdir -pv "$REPO_ROOT_DIR"
    if [[ ! -e "${REPO_ROOT_DIR}/.git" ]]; then
        git clone 'https://github.com/usagiga/dotfiles.git' "$REPO_ROOT_DIR"
    else
        cd "$REPO_ROOT_DIR"
        git pull
    fi
    
    # Guard unsupported OS
    OS_NAME="$(uname -s | awk '{print tolower($0)}')"
    if [[ "${OS_NAME}" != 'darwin' && "${OS_NAME}" != 'linux' ]]; then
        echo "$OS_NAME is not supported."
        exit 1
    fi

    # Generate symlinks
    echoH1 'Install common configuration files'
    genSymlinks ${REPO_ROOT_DIR} ${HOME}

    echoH1 "Install ${OS_NAME} configuration files"
    genSymlinks ${REPO_ROOT_DIR}/${OS_NAME} ${HOME}

    # Run initialize scripts
    echoH1 'Run common initialization scripts'
    runScripts ${REPO_ROOT_DIR}/dotfiles.init.d

    echoH1 "Run ${OS_NAME} initialization scripts"
    runScripts ${REPO_ROOT_DIR}/${OS_NAME}/dotfiles.init.d

    # Done
    echoH1 'All tasks are done 🎉'
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
            if [[ "${REPO_ROOT_DIR}/${IGNORE}" = "${SRC_PATH}" ]]; then
                # continue outer `for` loop
                continue 2
            fi
        done

        # If source is directory, make it
        if [ -d "${SRC_PATH}" ]; then
            echoH2 "mkdir $DST_PATH"
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
            echoH2 "ln -s $DST_PATH"
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
    local SRC_DIR=$1
    if [[ ! -e $SRC_DIR ]]; then
        echo "No file to run"
        return 0
    fi

    bash $SRC_DIR/*.sh
}

function echoH1() {
    echo ""
    echo "${BOLD}${GREEN}### $1${RESET}"
    echo ""
}

function echoH2() {
    echo "${CYAN}$ $1${RESET}"
}

main
