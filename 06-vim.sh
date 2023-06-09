#!/bin/bash

rm -rf ~/.vim_runtime

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime

sh ~/.vim_runtime/install_awesome_vimrc.sh

echo "set nu" >> ~/.vim_runtime/my_configs.vim
