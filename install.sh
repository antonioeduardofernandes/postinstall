#/bin/bash
sudo pacman -Syu

#create user
useradd -m antonio
passwd antonio
sudo echo "antonio ALL=(ALL) ALL >> /etc/sudoers

#base installation
sudo pacman -S xclip xorg xorg-xinit xorg-xsetroot xdg-user-dirs alsa-utils feh alacritty bspwm sxhkd unzip openssh nodejs npm code mpv rofi ttf-font-awesome thunar thunar-archive-plugin thunar-media-tags-plugin gvfs thunar-volman raw-thumbnailer zsh qbittorrent

#clone dotfiles repo
# cd $HOME
# git clone https://github.com/antonioeduardofernandes/postinstall.git
cd postinstall/

#copy base files
cd files/
cp -r .xinitrc .zshrc .vimrc .gitconfig .bashrc .config $HOME/  

#google-chrome
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome/
makepkg -sri && cd ..

#mv bin scripts
sudo cp -r $HOME/postinstall/scripts/* /usr/bin

#change bg
mv $HOME/postinstall/wp $HOME/
feh --bg-scale $HOME/wp/wp.jpg

#fonts
cd
git clone https://github.com/powerline/fonts.git
cd fonts/ && ./install.sh

git clone https://aur.archlinux.org/ttf-material-icons-git.git
cd ttf-material-icons-git/
makepkg -sri && cd ..

git clone https://aur.archlinux.org/nerd-fonts-ubuntu-mono.git
cd nerd-fonts-ubuntu-mono/
makepkg -sri && cd ..

#spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -
git clone https://aur.archlinux.org/spotify.git
cd spotify/
makepkg -sri && cd ..

#polybar
git clone https://aur.archlinux.org/polybar.git
cd polybar/ 
makepkg -sri && cd ..
chmod +x $HOME/.config/polybar/launch.sh


#ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#picom with animations
git clone https://aur.archlinux.org/picom-jonaburg-git.git
cd picom-jonaburg-git/ 
makepkg -sri && cd ..

#vscode
source $HOME/vscode/vscode.sh

#chmod files
chmod +x $HOME/.config/bspwm/bspwmrc
chmod +x $HOME/.config/sxhkd/sxhkdrc

#wallpaper
cp -r $HOME/postinstall/files/wp $HOME
feh --bg-scale $HOME/wp/wp.jpg

#startx
startx
