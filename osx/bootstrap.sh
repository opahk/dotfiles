#!/usr/bin/env bash
DOTPATH=$HOME/.dotfiles
BATTLEPATH=$HOME/.battleschool

git config --global user.name "Frank C. Eckert"
git config --global user.email frank.eckert@boost-project.com

install_dependencies() {
  mkdir -p $DOTPATH
  mkdir -p $BATTLEPATH
  xcode-select --install
  sudo gcc -v # to agree to terms

  # homebrew
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade
  brew tap phinze/homebrew-cask
  brew install brew-cask
}

install_battleschool() {
  sudo easy_install pip
  sudo pip install battleschool
  battle
}

# Install dotfiles
install_dotfiles() {
  git clone https://github.com/opahk/dotfiles.git $DOTPATH
  cd $DOTPATH && bash bootstrap.sh
}

battle_again() {
  sudo ansible-galaxy install hnakamur.homebrew-cask-packages
  battle
}

# Install the janus vim distribution (https://github.com/carlhuda/janus/)
# install_janus() {
  # curl -Lo- https://bit.ly/janus-bootstrap | bash
# }

set_login_shell() {
  sudo chsh -s $(which zsh) $USER
}


install_dependencies
install_dotfiles
install_battleschool
set_login_shell
