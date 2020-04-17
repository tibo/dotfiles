#!/bin/bash
# set -x

git submodule update --init

echo "=== Setting up dot files ==="

echo "=> setup zshrc"
mv ~/.zshrc ~/.zshrc.old
ln -s "$(pwd)/zshrc" ~/.zshrc

echo "=> setup vmrc and vim packages"
mv ~/.vimrc ~/.vimrc.old
ln -s "$(pwd)/vimrc" ~/.vimrc
mv ~/.vim ~/.vim.old
mkdir -p ~/.vim/pack/themes/start/
ln -s "$(pwd)/draculat-vim" ~/.vim/pack/themes/start/draculat-vim

echo "=> setup git global config"
mv ~/.gitconfig ~/.gitconfig.old
ln -s "$(pwd)/gitconfig" ~/.gitconfig