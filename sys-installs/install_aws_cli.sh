
# !/bin/bash
set -e

# Check if running as root using EUID.
if [ "$EUID" -ne 0 ]; then
    echo "error: This script must be run as root or sudo."
    exit 1
fi
 
# Alerting the user if apt package manager exists.
if ! command -v apt >/dev/null 2>&1; then
    echo "error: apt package manager not found. This script supports an Ubuntu/Debian system only."
    exit 1
fi

# Common instructions about the script for the user.
echo "This script will install AWS CLI v2."
echo "The following actions will be performed:"
echo "- install required dependencies(curl,unzip)"
echo "- Download AWS CLI v2 from the official source"
echo "- Install AWS CLI system-wide."

read -p "Do you want to continue? (y/n):" user_choice

# Continue or abort the installation action as per user's choice.
if [[ "$user_choice" != "y" ]]; then
    echo "installation aborted by user."
    exit 0
fi
# Checks if AWS-cli command already exists (name conflict)
if command -v aws >/dev/null 2>&1; then
    echo "error: aws command already exists on this system."
    echo "This may cause a conflict. Please remove the existing installation before proceeding."
    exit 1
fi

# Install dependencies for AWS CLI
echo "Installing dependencies..."
apt update -y >/dev/null 2>&1
apt install -y curl unzip >/dev/null 2>&1

# Downloading zip file of AWS CLI v2 using the curl command
echo "Downloading AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"

# Extracting downloaded zip by using the unzip command
echo "Extracting package..."
unzip -q /tmp/awscliv2.zip -d /tmp

# Installing AWS CLI v2
echo "Installing AWS CLI"
/tmp/aws/install >/dev/null 2>&1

# Remove zip file after extraction
rm -rf /tmp/aws /tmp/awscliv2.zip

# Confirming installation
if command -v aws >/dev/null 2>&1; then
    echo ""
    echo "Success: awscliv2 has been installed successfully!"
    echo "Try running the following command:"
    echo "aws --version"
else
    echo "error: installation failed"
    exit 1
fi
