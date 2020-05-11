#/bin/bash!

# hard link the emacs customizations
for file in ~/notes/config/emacs-customizations/*.el; do
    for dir in ~/notes/config/bootstrap-*/; do
	ln -f $file $dir/elisp/${file##*/}
    done
done

# soft link for emacs setup
if [[ $1 == 'zenburn' ]]; then
    rm -rf ~/.emacs.d
    ln -s ~/notes/config/bootstrap-emacs-zenburn/ ~/.emacs.d
elif [[ $1 == 'solarized-dark' ]]; then
    echo $1
    rm -rf ~/.emacs.d
    ln -s ~/notes/config/bootstrap-emacs-solarized-dark/ ~/.emacs.d
fi
# ln -s notes/config/emacs-for-closure/ ./.emacs.d

emacs &

# hard link for z-shell config
ln -fs ~/notes/config/zshrc ~/.zshrc
