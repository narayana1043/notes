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

# clone reqiured git repo is not present else pull required
if [[ ! -d notes ]]; then
    git clone https://github.com/narayana1043/notes.git ~/notes/
else
    cd notes && git pull && cd ~
fi

# hard link the emacs customizations
for file in ./notes/config/emacs-customizations/*.el; do
    for dir in ./notes/config/bootstrap-*/; do
	ln -f $file $dir/elisp/${file##*/}
    done
done

# soft link for emacs setup
if [[ $1 == 'zenburn' ]]; then
    rm -rf ~/.emacs.d
    ln -s notes/config/bootstrap-emacs-zenburn/ ~/.emacs.d
elif [[ $1 == 'solarized-dark' ]]; then
    echo $1
    rm -rf ~/.emacs.d
    ln -s notes/config/bootstrap-emacs-solarized-dark/ ~/.emacs.d
fi
# ln -s notes/config/emacs-for-closure/ ./.emacs.d

emacs &

# hard link for z-shell config
ln -fs notes/config/zshrc ./.zshrc
