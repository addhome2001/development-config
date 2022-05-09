#!/bin/bash

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.rei 'rebase -i'
git config --global alias.rc 'reset --soft HEAD~1'

cp ./.zshrc ~/.zshrc
cp ./vimrc ~/.vim/vimrc
