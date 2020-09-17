#!/bin/bash

# install fzf bindings
yes | $(brew --prefix)/opt/fzf/install

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
