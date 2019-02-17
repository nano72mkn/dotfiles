init:
	make zsh
	make vim
	make nvim
	make dein
	make git

nvim:
	mkdir -p ~/.config/nvim
	ln -sf ~/.dotfiles/vimrc ~/.config/nvim/init.vim
	ln -sf ~/.dotfiles/dein.toml ~/.config/nvim/dein.toml

vim:
	mkdir -p ~/.vim/colors
	ln -sf ~/.dotfiles/colors/hybrid.vim ~/.vim/colors/hybrid.vim
	ln -sf ~/.dotfiles/vimrc ~/.vimrc

zsh:
	ln -sf ~/.dotfiles/zshrc ~/.zshrc

dein:
	ln -sf ~/.dotfiles/dein.toml ~/dein.toml

git:
	git config --global alias.st status
	git config --global alias.co checkout
	git config --global alias.br branch
	git config --global alias.ci commit
	git config --global alias.df diff
	git config --global alias.gr grep
