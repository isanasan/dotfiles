#!/bin/bash

dotfiles_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); cd ../; pwd)
ln -s ${dotfiles_dir}/config/vimfiles            ~/.vim
ln -s ${dotfiles_dir}/config/eskk               ~/.eskk
ln -s ${dotfiles_dir}/config/config             ~/.config
ln -s ${dotfiles_dir}/config/.skk-jisyo          ~/.skk-jisyo
ln -s ${dotfiles_dir}/config/p10k.zsh          ~/.p10k.zsh

