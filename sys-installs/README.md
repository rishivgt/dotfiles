# Sys-Installs 
This directory contains the script for installing system software(AWS-cli) on an Ubuntu-based system.

--- 
## Install_aws_cli.sh
This script installs aws cli v2 manually by using the official binaries. The apt install command is used to install dependencies like curl and unzip. 
---
## Features
- Ensure that the script runs as a root(EUID check).
- Verifies that the apt package manager exists.
- Prompts user confirmation before installing.
- Detects command line name conflicts(`aws`).
- Install dependencies(`curl` and `unzip`).

- Downloads AWS cli from official source: [aws cli url](https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip)
- Installs silently
- Cleans temporary files after install
- Verifies installation
---
## Usage
```
chmod +x install_aws_cli.sh
sudo ./install_aws_cli.sh
```

# Citation
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html - This is the official aws-cli installation guide for different operating systems.From this I chose to use the installation guide for Linux to make my script. I used curl to install the binary file. I extracted the files with the unzip command and using the final extracted folder, I installed the aws cli with the help of the /tmp/aws/install file. To verify the installation, I ran the command aws --version.



