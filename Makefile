init:
	make zsh
	make vim
	make nvim
	make dein
	make git
	make ~/.fzf/bin/fzf

nvim:
	mkdir -p ~/.config/nvim
	ln -sf ~/.dotfiles/vim/vimrc ~/.config/nvim/init.vim
	ln -sf ~/.dotfiles/vim/dein.toml ~/.config/nvim/dein.toml

vim:
	mkdir -p ~/.vim/colors
	ln -sf ~/.dotfiles/vim/colors/hybrid.vim ~/.vim/colors/hybrid.vim
	ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc

zsh:
	ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc

dein:
	ln -sf ~/.dotfiles/vim/dein.toml ~/dein.toml

git:
	ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig

~/.fzf/bin/fzf:
	~/.fzf
	yes | ~/.fzf/install

~/.fzf:
	git clone --depth 1 https://github.com/junegunn/fzf.git

