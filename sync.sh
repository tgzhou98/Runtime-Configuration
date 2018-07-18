#!/bin/bash
#########################################################################
# File Name: sync.sh
# Author:  Tiangang Zhou
# mail: tg_zhou@pku.edu.cn
#########################################################################

cp -f ~/.vimrc vim/vimrc
cp -f ~/.bashrc bash/bashrc
cp -f ~/.zshrc zshrc/zshrc
cp -f ~/.config/nvim/init.vim vim/init.vim
if [[ -f "dotfiles.tar.gz" ]]; then
	tar -xzf dotfiles.tar.gz
	mv dotfiles/*vimrc vim
	mv dotfiles/*bashrc bash
	mv dotfiles/*init.vim vim
	mv dotfiles/*zshrc zshrc
	rm -rf dotfiles
fi
