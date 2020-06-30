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


if [ $OS_NAME == "Darwin" ]; then
    ln -s $INSTALL_DIR/darwin/.gitconfig $HOME/.gitconfig || echo "skipped"
    ln -s $INSTALL_DIR/darwin/.zshrc $HOME/.zshrc || echo "skipped"
elif [ $OS_NAME == "Linux" ]; then
    ln -s $INSTALL_DIR/linux/.gitconfig $HOME/.gitconfig || echo "skipped"
else
    echo "$OS_NAME is not supported."
    exit 1
fi
