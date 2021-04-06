#/bin/bash

sudo pacman -Syu

#base installation
sudo pacman -S git xclip xorg xorg-xinit xorg-xsetroot xdg-user-dirs feh alacritty bspwm unzip

#create user directories
xdg-user-dirs-update

#clone dotfiles repo
cd $HOME
git clone https://github.com/antonioeduardofernandes/postinstall.git

#copy base files
cd $HOME/postinstall
cp .xinitrc .zshrc .vimrc $HOME/  

#bspwm & sxhkd
cd
mkdir $HOME/.config/{bspwm,sxhkd}
cp sxhkdrc $HOME/.config/sxhkd
cp bspwmrc $HOME/.config/bspwm

#thunar
sudo pacman -S thunar thunar-archive-plugin thunar-media-tags-plugin gvfs thunar-volman raw-thumbnailer

#rofi
sudo pacman -S rofi
mkdir $HOME/.config/rofi
mv $HOME/postinstall/files/config.rasi $HOME/.config/rofi

#google-chrome
cd
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome/
makepkg -sri PKGBUILD
cd

#mv bin scripts
cd
sudo cp kbd wp_changer /usr/bin/
sudo chmod +x /usr/bin/kbd
sudo chmod +x /usr/bin/wp_changer

#change bg
mv $HOME/postinstall/wp $HOME/
feh --bg-scale $HOME/wp/wp.jpg

#fonts
source ./fonts.sh
