rm -rf .config
cp -r ~/.config .
rm -rf .config/mozilla/
# base de données utilisateur de dconf, qui est le système de gestion des configurations de l'environnement de bureau GNOME (et d'autres environnements dérivés comme Cinnamon, MATE ou Budgie).
rm -rf .config/dconf/

rm -rf .emacs.d
mkdir .emacs.d
cp ~/.emacs.d/*.el .emacs.d
