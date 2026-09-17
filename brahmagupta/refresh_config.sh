rm -rf .config
cp -r ~/.config .
rm -rf .config/mozilla/
rm -rf .config/dconf/

rm -rf .emacs.d
mkdir .emacs.d
cp ~/.emacs.d/*.el .emacs.d
