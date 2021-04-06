#/bin/bash
cd $HOME
git clone https://aur.archlinux.org/ttf-material-icons-git.git
cd ttf-material-icons-git/
makepkg -sri PKGBUILD
cd $HOME
sudo pacman -S ttf-font-awesome


cd $HOME
git clone https://aur.archlinux.org/nerd-fonts-ubuntu-mono.git
cd nerd-fonts-ubuntu-mono/
makepkg -sri PKGBUILD
cd $HOME
