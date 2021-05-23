#!/bin/sh

set -euo pipefail


OS_NAME=$(uname -s)
INSTALL_DIR=${HOME}/Project/github.com/usagiga/dotfiles


# Initialize dirs
mkdir -pv $INSTALL_DIR
mkdir -pv ${HOME}/.config


# Clone or Pull
if [ ! -e ${INSTALL_DIR}/.git ]; then
    git clone https://github.com/usagiga/dotfiles.git $INSTALL_DIR
else
    cd $INSTALL_DIR
    git pull
fi


# Create symlink
ln -s $INSTALL_DIR/.vimrc $HOME/.vimrc || echo "skipped"
ln -s $INSTALL_DIR/.config/fish $HOME/.config || echo "skipped"
ln -s $INSTALL_DIR/.config/git $HOME/.config || echo "skipped"


if [ $OS_NAME == "Darwin" ]; then
    mkdir -pv ${HOME}/.gnupg

    ln -s $INSTALL_DIR/darwin/.gitconfig $HOME/.gitconfig || echo "skipped"
    ln -s $INSTALL_DIR/darwin/.zshrc $HOME/.zshrc || echo "skipped"
    ln -s $INSTALL_DIR/darwin/.Brewfile $HOME/.Brewfile || echo "skipped"
    ln -s $INSTALL_DIR/darwin/.gnupg/gpg-agent.conf $HOME/.gnupg/gpg-agent.conf || echo "skipped"
    
    # Run `brew bundle --global`
    which brew
    if [ $? = 0 ]; then
        brew bundle --global
    else
        echo "Homebrew is not installed. After installing it, run `brew bundle --global` manually."
    fi
elif [ $OS_NAME == "Linux" ]; then
    ln -s $INSTALL_DIR/linux/.gitconfig $HOME/.gitconfig || echo "skipped"
else
    echo "$OS_NAME is not supported."
    exit 1
fi
