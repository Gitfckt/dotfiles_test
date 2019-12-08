#!/usr/bin/env bash

# Install Brew Packages
brew install python
brew install tree
brew install pkg-config

# Install MacOS Applications
brew cask install nordvpn
brew cask install firefox
brew cask install keepassxc
brew cask install gpg-suite
brew cask install tor-browser
brew cask install onionshare
brew cask install nextcloud
brew cask install joplin
brew cask install libreoffice
brew cask install thunderbird
brew cask install vscodium
brew cask install signal
brew cask install gimp
brew cask install inkscape

# Install Source Code Pro Font
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro

# Install powerlevel9k Theme
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
echo "source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme" >>~/.zshrc

# Install nerd-fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

## INSTALL zsh EXTENSIONS ##
# Install autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >>~/.zshrc
