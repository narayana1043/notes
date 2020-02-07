#/bin/bash!

# install homebrew #
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew install required libs
brew install zsh
brew install git
brew install wget
brew cask install emacs
brew install tree
brew install gettext
brew link --force gettext
brew cask install mactex
brew install imagemagick
brew install kubernetes-helm
brew instal jq
brew cask install graphviz

# clone reqiured git repos
git clone https://github.com/narayana1043/notes.git

# hard link files
ln notes/mac-config/home-config/emacs ~/.emacs
ln notes/mac-config/home-config/zshrc ~/.zshrc
