#!/bin/bash

#You'll need to run it twice, to install to normal user once with sudo and to install to root user with sudo su

echo "If you already have vim installed type Y, if not "N""
read VimAlreadyInstalled

if [ $VimAlreadyInstalled == "N" ] || [ $VimAlreadyInstalled == "n" ]
    then apt-get install vim
fi

echo "If you already have vundle installed type Y, if not "N""
read VundleAlreadyInstalled

if [ $VundleAlreadyInstalled == "N" ] || [ $VundleAlreadyInstalled == "n" ]
    then git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Overwrite vimrc with high styled new one? "Y" to overwrite: "
read overWrite

if [ $overWrite == "Y" ] || [ $overWrite == "y" ]
    then wget https://raw.githubusercontent.com/haskellcamargo/vimrc/master/.vimrc -O ~/.vimrc
fi

echo "Now you need to run vim and run the vundle plugin installer ':PluginInstall'"