#!/bin/sh

set -euo pipefail


OS_NAME=$(uname -s)
INSTALL_DIR=${HOME}/Project/github.com/usagiga/dotfiles


echo "# github.com/usagiga/dotfiles Installer"


# Initialize dirs
mkdir -pv $INSTALL_DIR
mkdir -pv ${HOME}/.config


# Clone or Pull
if [ ! -e ${INSTALL_DIR}/.git ]; then
    echo "## Cloning dotfiles repos"
    git clone https://github.com/usagiga/dotfiles.git $INSTALL_DIR
else
    echo "## Updating dotfiles repos"
    cd $INSTALL_DIR
    git pull
fi


# Create symlink
echo "## Creating symlinks..."
ln -s $INSTALL_DIR/.vimrc $HOME/.vimrc || echo "skipped"
ln -s $INSTALL_DIR/.config/fish $HOME/.config || echo "skipped"
echo "Complete to create symlinks."


if [ $OS_NAME == "Darwin" ]; then
    echo "### Create symlinks for MacOS..."
    ln -s $INSTALL_DIR/darwin/.gitconfig $HOME/.gitconfig || echo "skipped"
    ln -s $INSTALL_DIR/darwin/.zshrc $HOME/.zshrc || echo "skipped"
    echo "Complete to create symlinks for MacOS."
elif [ $OS_NAME == "Linux" ]; then
    echo "### Create symlinks for Linux..."
    echo "There's no symlinks for Linux."
else
    echo "$OS_NAME is not supported."
    exit 1
fi


echo "----"
echo "dotfiles were installed!"
