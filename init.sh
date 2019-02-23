#!/bin/bash
rsync -avh --progress .config ~/

brew update
brew bundle --global
# Remove outdated versions from the cellar.
brew upgrade
brew cleanup
brew doctor

xcode-select --install

find ~/ -name '.git' -execdir git fetch --all \;
find ~/ -name '.git' -execdir git pull \;

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

curl -sSL https://get.rvm.io | bash -s stable
rvm reinstall 2.4.1 --with-openssl-dir=`brew --prefix openssl`
rvm --default use 2.4.1
gem install neovim

pip2 install --index-url=http://pypi.python.org/project/ --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org pynvim
pip3 install --index-url=http://pypi.python.org/project/ --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org pynvim

npm install -g --prefix third_party/tsserver typescript
npm install -g npm

cd ~
.config/nvim/bundle/YouCompleteMe/install.py --all
.config/nvim/bundle/YouCompleteMe/run_tests.py

find .config -name '.*' -depth 2 --exec rsync -avh --progress {} ~/ \;
find ~/ --exec chown `whoami` {} \;

source .zshrc
