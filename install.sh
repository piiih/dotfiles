#!/bin/bash

script_dir=$(dirname $0)

tmux_file=~/.tmux.conf
nvim_file=~/.config/nvim/init.vim

if [ -f $tmux_file ]
then
    mv ~/.tmux.conf ~/.tmux.conf.bkp
fi
cp $script_dir/tmux/.tmux.conf ~/.tmux.conf

if [ -f $nvim_file ]
then
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bkp
fi
cp $script_dir/nvim/init.vim ~/.config/nvim/init.vim
