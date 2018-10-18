#!/bin/bash

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install command-line tools using Homebrew.

# Update Homebrew recipes
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
#brew install bash
#brew tap homebrew/versions
#brew install bash-completion2

# Switch to using brew-installed bash as default shell
#if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
#  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
#  chsh -s /usr/local/bin/bash;
#fi;

brew cleanup

heroku update


# Install Mac App Store apps
mas install 458034879 # Dash
mas install 507257563 # Sip
mas install 406056744 # Evernote
mas install 409183694 # Keynote
mas install 408981381 # iPhoto
mas install 409789998 # Twitter
mas install 405772121 # LittleIpsum
mas install 409203825 # Numbers
mas install 409201541 # Pages

# Make ZSH the default shell environment
#chsh -s $(which zsh)

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
#mkdir $HOME/Sites


# NVM install
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install --lts
nvm use --lts

npm install yarn --global


# Create a Projects directory
mkdir $HOME/Projects

npm install --global sfdx-cli

sfdx update

git clone https://github.com/wadewegner/salesforce-cli-zsh-completion.git $HOME/Projects/salesforce-cli-zsh-completion

# Install Visual Studio Code plugins
code --install-extension salesforce.salesforcedx-vscode-apex
code --install-extension salesforce.salesforcedx-vscode-apex-debugger
code --install-extension salesforce.salesforcedx-vscode-lightning
code --install-extension salesforce.salesforcedx-vscode-core
code --install-extension salesforce.salesforcedx-vscode

export GOPATH=$HOME/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

go get gopkg.in/Netflix-Skunkworks/go-jira.v1/cmd/jira
