#!/bin/zsh
# set -x

git submodule update --init

echo "=== Setting up dot files ==="

echo "=> setup zshrc"
mv ~/.zshrc ~/.zshrc.old
ln -s "$(pwd)/zshrc" ~/.zshrc

echo "=> setup vmrc and vim packages"
mv ~/.vimrc ~/.vimrc.old
ln -s "$(pwd)/vimrc" ~/.vimrc
rm -rf ~/.vim
ln -s "$(pwd)/vim/" ~/.vim

echo "=> setup git global config"
mv ~/.gitconfig ~/.gitconfig.old
ln -s "$(pwd)/gitconfig" ~/.gitconfig

rm ~/.fzf.sh
ln -s "$(pwd)/fzf.sh" ~/.fzf.sh
rm ~/.z.sh
ln -s "$(pwd)/z/z.sh" ~/.z.sh

source ~/.zshrc
