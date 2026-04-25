# Dotfiles Repository

## Overview 
This repository contains dotfiles used to configure and customize my development environment. For example, to install aws CLI, to configure vim, etc. 
It helps developers quickly setup a consistent and productive workflow across different machines.

## Contents
This repository includes the following folders:
1. vim-config: The vim editor's configurations/settings.
2. homefiles: This contains my .bash_aliases files to improve my development environment.
3. sys-installs: This contains the script to install aws-cli.

## How to use
1. Clone the repository.
   ```
   git clone https://github.com/rishivgt/dotfiles.git
   cd dotfiles
   ```
2. Apply the configurations of vim-config.(check ./vim-config/README.md for more details)
   ```
   ./vim_config/setup_vim.sh  
   ```
3. Installing homefiles.(check ./homefiles/README.md for more details)
   ``` 
   ./homefiles/install_bash_aliases.sh
   source ~/.bashrc
    ```
5. Installing aws-cli.(check ./sys-installs/README.md for more details)
    ```
    chmod +x install_aws_cli.sh
    sudo ./sys-installs/install_aws_cli.sh
    ```
