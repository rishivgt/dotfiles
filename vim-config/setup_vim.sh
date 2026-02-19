#!/bin/bash

echo "Setting up Vim configuration..."

# Copy .vimrc
echo "Copying .vimrc to home directory..."
cp .vimrc ~/.vimrc

# Install Vundle if ~/.vim/bundle/Vundle.vim is not present
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
    echo "Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Vundle already installed."
fi

# Installing Vundle Plugins
echo "Installing Vundle plugins..."
vim +PluginInstall +qall

echo "Vim setup completed."
