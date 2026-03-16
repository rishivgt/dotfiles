This folder contains the custom bash aliases in the environment to enhance productivity in the system.

## Files


.bash_aliases: This contains the useful bash aliases for quick command execution.

Examples included:
- clear command
- git command
- list command

install_bash_aliases.sh: This script installs the bash aliases by creating the symbolic links from the repository to the user's home directory.

Steps Performed by script:
1. backup existing .bash_aliases file
2. create a symbolic link from the repository
3. ensure that .bashrc loads .bash_aliases
4. Prompt the user to reload the bash enviromment

## Installation 

run: ./install_bash_aliases.sh

reload bash:
 source ~/.bashrc

 ## Citations  

 - [Awesome bash aliases](https://github.com/ctrlaltvikas/awesome-bash-alias) - used to pick my alias from the `clear` section and from the `git` section.
 - [30 okay aliases](https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html) - used to pick my 2nd alias from the `list` section.




