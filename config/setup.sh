#/bin/bash!

cd ~

# install homebrew #
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# brew install required libs
brew install zsh
brew install git
brew install wget
brew cask install emacs
brew install tree
# brew install gettext
# brew link --force gettext
# brew cask install mactex
# brew install kubernetes-helm
brew instal jq
# brew cask install graphviz

# clone reqiured git repos
git clone https://github.com/narayana1043/notes.git

# hard link the emacs customizations
for file in ./notes/config/emacs-customizations/*.el; do
    for dir in ./notes/config/bootstrap-*/; do
	echo $file $dir/elisp/${file##*/}
	ln $file $dir/elisp/${file##*/}
    done
done

# soft link for emacs setup
ln -s notes/config/bootstrap-emacs-zenburn/ ./.emacs.d
# ln -s notes/config/emacs-for-closure/ ./.emacs.d
# ln -s notes/config/bootstrap-emacs-soloraized-dark/ ./.emacs.d

emacs &

# hard link for z-shell config
ln -s notes/config/zshrc ./.zshrc
