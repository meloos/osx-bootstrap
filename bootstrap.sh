#!/bin/zsh

# xcode command line tools
xcode-select --install

# accept xcode license
sudo xcodebuild -license

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install homebrew python3 
brew update && brew install python

# install crucial python packages
python3 -m pip install --upgrade setuptools
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade ansible

# install playbook requirements
ansible-galaxy role install -r requirements.yml

# run actual playbook
ansible-playbook playbook.yml --ask-become-pass

# install fzf bindings
$(brew --prefix)/opt/fzf/install

# asdf plugins
asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git
asdf install terraform latest:0.11
asdf install terraform latest:0.12
asdf install terraform latest:0.13

asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf install rust latest

asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git
asdf install helm latest:2
asdf install helm latest:3
