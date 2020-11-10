#!/bin/sh

echo "Setting up your Mac..."
read -p "This script will install ohmyzsh, do you want to continue? (y/n)" choice

if [ "$choice" != "y" ]; then
    echo "discarding installation...";
    exit;
fi

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp ./system/.zshrc ~/.zshrc
