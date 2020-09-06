#!/bin/bash

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
