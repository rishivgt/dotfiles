#!/bin/bash
set -e


if [ "$EUID" !=0 ]; then
    echo "error: This script must be run as root or sudo."
    exit 1
fi

if ! command -v apt >/dev/null 2>&1; then
    echo "error: apt package manager not found. This script supports an Ubuntu/Debian system only."
    exit 1
fi

echo "This script will install AWS CLI v2."
echo "The following actions will be performed:"
echo "- install required dependencies(curl,unzip)"
echo "- Download AWS CLI v2 from the official source"
echo "- Install AWS CLI system-wide."

read -p "Do you want to continue? (y/n):" user_choice

if [[ "$user_choice" != "y" ]]; then
    echo "installation aborted by user."
    exit 0
fi

if command -v aws >/dev/null 2>&1; then
    echo "error: aws command already exists on this system."
    echo "This may cause a conflict. Please remove the existing installation before proceeding."
    exit 1
fi

echo "Installing dependencies..."
apt update -y >/dev/null 2>&1
apt install -y curl unzip >/dev/null 2>&1

echo "Downloading AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"

echo "Extracting package..."
unzip -q /tmp/awscliv2.zip -d /tmp

echo "Installing AWS CLI"
/tmp/aws/install >/dev/null 2>&1

rm -rf /tmp/aws /tmp/awscliv2.zip

if command -v aws >/dev/null 2>&1; then
    echo ""
    echo "Success: awscliv2 has been installed successfully!"
    echo "Try running the following command:"
    echo "aws --version"
else
    echo "error: installation failed"
    exit 1
fi
