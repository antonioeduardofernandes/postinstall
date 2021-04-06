# Path to your oh-my-zsh installation.
 export ZSH="/home/antonio/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=( git
		zsh-autosuggestions
		zsh-syntax-highlighting
		)

source $ZSH/oh-my-zsh.sh

#autostart x at login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

# Aliases
alias mkdir="mkdir -p"
alias lsa="ls -a"
alias ll="ls"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias dotfiles='/usr/bin/git --git-dir=/home/antonio/dotfiles/ --work-tree=/home/antonio'
