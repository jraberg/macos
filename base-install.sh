#!/usr/bin/env bash

echo "===>Install xCode ..."
xcode-select --install

echo "===>Install Homebrew ..."
if [[ ! -x "/usr/local/bin/brew" ]]; then
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
   echo "homebrew allready installed."
fi

echo "===>Install command line tools ..."
brew install wget
brew install tree
brew install git
brew install vim
brew install curl
brew install md5deep
brew install shellcheck
brew install jq
brew install jsonlint
brew install csvkit
brew install rsync
brew install coreutils
brew install netcat
brew install tcpdump
brew install openssl
brew install bzip2
brew install zsh
brew install ack
brew install watch

echo "===>Install Golang ..."
brew install go

echo "===>Installing Python ..."
brew install python
pip3 install --upgrade setuptools
pip3 install --upgrade pip
brew install pyenv

echo "===>Install node.js and tools ..."
brew install nvm

brew install yarn
brew install prettier

echo "===>Install Circle CI tools ..."
brew install circleci

echo "===>Install AWS cli client ..."
pip install awscli --upgrade --user

echo "===>Install Ansible ..."
brew install ansible
brew install ansible-lint

echo "===>Install Terraform ..."
brew install terraform
brew install terraform-doc
brew install tflint
brew install terragrunt

# Install zsh theme
echo "===>Install zsh extention oh-my-zsh with spaceship prompt ..."
bash <<EOF
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
exit
EOF

npm install -g spaceship-prompt
brew tap caskroom/fonts
brew cask install font-fira-code

# Development
echo "===>Install development tools ..."
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" goland
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" charles
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" caffeine
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" spotify

# Cleanup
echo "===> Cleaning up..."
brew cleanup
rm -f -r /Library/Caches/Homebrew/*


