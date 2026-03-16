#!/bin/bash

echo "installing bash aliases..."

dotfiles_dir="$HOME/dotfiles/homefiles"
target="$HOME/.bash_aliases"

# backup existing file

if [ -f "$target" ]; then
    echo "backing up existing .bash_aliases"
    mv "$target" "$target.backup"
fi

# Create Symbolic Link

ln -s "$dotfiles_dir/.bash_aliases" "$target"
echo "Symbolic link created"

#ensure that bashrc loads bash_aliases

if ! grep -q ".bash_aliases" ~/.bashrc; then 
    echo "adding source command to .bash_rc"
    echo "" >> ~/.bashrc
    echo "if [ -f ~/.bash_aliases ]: then" >> ~/.bashrc
    echo "  . ~/.bash_aliases" >> ~/.bashrc
fi

echo "Installation complete"
echo "Reload bash using:"
echo "source ~/.bashrc"
    


