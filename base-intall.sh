#!/usr/bin/env bash

echo "Install Xcose"
xcode-select --install

echo "Install Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install command line tools"
brew install wget
brew install tree
brew install git
brew install vim
brew install curl
brew install checksum
brew install shellcheck
brew install jq
brew install jsonlint
brew install cvskit
brew install rsync
brew install coreutils
brew install netcat
brew install tcpdump
brew install openssl
brew install bzip2
brew install parallel
brew install zsh
brew install oh-my-zsh
brew install ack
brew install watch
brew install watchman


echo "Install Postgres SQL"
brew install postgresql

echo "Install Golang"
brew install go

echo "Install command node and tools"
brew install node
node -v
brew install nvm
npm install -g npm
npm -v
npm install -g typescript
brew install yarn
brew install prettier

echo "Install Circle CI tools"
brew install circleci

echo "Install AWS cli client"
brew install awscli

echo "Install lastpass cli"
brew install lastpass-cli --with-pinentry --with-doc

echo "Install Ansible"
brew install ansible
brew install ansible-lint

# Install zsh theme
npm install -g spaceship-prompt

# Development
echo "Install development tools"
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" webstorm
brew cask install --appdir="/Applications" goland
brew cask install --appdir="/Applications" datagrip
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" charles
brew cask install --appdir="/Applications" easyfind
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" postman


# Core Functionality
echo "Install base applications"
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="~/Applications" transmit
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" java
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" lastpass
brew cask install --appdir="/Applications" caffeine
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" cheetshet
brew cask install --appdir="/Applications" spotify

# link Alfred
brew cask alfred link

# Cleanup
brew cleanup 
rm -f -r /Library/Caches/Homebrew/*


