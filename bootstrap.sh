#! /usr/bin/env bash


echo "Setting up your Mac..."


# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Updating Homebrew recipes..."
brew update

echo "Installing Rosetta..."
sudo softwareupdate --install-rosetta --agree-to-license

echo "Installing Brewfile packages..."
brew bundle --file ~/.dotfiles/Brewfile

echo "Setting up fish shell..."
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

# Symlink the Mackup config file to the home directory
ln -s ~/.dotfiles/.mackup.cfg ~/.mackup.cfg

# Set macOS preferences
source ~/.dotfiles/.macos