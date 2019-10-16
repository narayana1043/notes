#/bin/bash!

# install homebrew #
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew install required libs
brew install git
brew install wget
brew cask install emacs
brew install tree
brew install gettext
brew link --force gettext

# clone reqiured git repos
git clone https://github.com/narayana1043/notes.git

# hard link files
ln notes/home-config/emacs ~/.emacs
