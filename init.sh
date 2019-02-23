#!/bin/bash
rsync -avh --progress .config ~/

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew bundle
brew upgrade
brew cleanup
brew doctor

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

xcode-select --install

find ~/ -name '.git' -execdir git fetch --all \;
find ~/ -name '.git' -execdir git checkout master \;
find ~/ -name '.git' -execdir git pull \;

rvm get stable --auto-dotfiles
rvm reinstall 2.6.1 --with-openssl-dir=`brew --prefix openssl`
rvm --default use 2.6.1
gem install neovim

pip2 install --index-url=http://pypi.python.org/project/ --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org pynvim
pip3 install --index-url=http://pypi.python.org/project/ --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org pynvim
pip2 install --index-url=http://pypi.python.org/project/ --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org flake8
pip3 install --index-url=http://pypi.python.org/project/ --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org flake8

npm install -g --prefix third_party/tsserver typescript
npm install -g npm

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java
sdk install ant
sdk install gradle
sdk install groovy
sdk install sshoogr
sdk install visualvm

sdk selfupdate force
sdk update

sdk upgrade java
sdk upgrade ant
sdk upgrade gradle
sdk upgrade groovy
sdk upgrade sshoogr
sdk upgrade visualvm

cd ~
.config/nvim/bundle/YouCompleteMe/install.py --all
.config/nvim/bundle/YouCompleteMe/run_tests.py

find .config -name '.*' -depth 2 --exec rsync -avh --progress {} ~/ \;
find ~/ --exec chown `whoami` {} \;

source .zshrc
