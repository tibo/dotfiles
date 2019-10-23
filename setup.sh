#!/bin/bash
# set -x

git submodule update --init

echo "=== Setting up dot files ==="

echo "=> setup zshrc"
rm -f ~/.zshrc
ln -s "$(pwd)/zshrc" ~/.zshrc

echo "=> setup vmrc and vim packages"
rm -f ~/.vimrc
ln -s "$(pwd)/vimrc" ~/.vimrc
rm -rf ~/.vim
mkdir -p ~/.vim/pack/themes/start/
ln -s "$(pwd)/draculat-vim" ~/.vim/pack/themes/start/draculat-vim

echo "=> setup git global config"
rm -f ~/.gitconfig
ln -s "$(pwd)/gitconfig" ~/.gitconfig