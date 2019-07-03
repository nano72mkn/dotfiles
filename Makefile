init:
	make set_zsh
	make set_vim
	make set_nvim
	make set_dein
	make set_git
	make ~/.fzf/bin/fzf

set_nvim:
	mkdir -p ~/.config/nvim
	ln -sf ~/.dotfiles/vim/vimrc ~/.config/nvim/init.vim
	ln -sf ~/.dotfiles/vim/dein.toml ~/.config/nvim/dein.toml

set_vim:
	mkdir -p ~/.vim/colors
	ln -sf ~/.dotfiles/vim/colors/hybrid.vim ~/.vim/colors/hybrid.vim
	ln -sf ~/.dotfiles/vim/vimrc ~/.vimrc

set_zsh:
	ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc

set_dein:
	ln -sf ~/.dotfiles/vim/dein.toml ~/dein.toml

set_git:
	cp ~/.dotfiles/git/gitconfig ~/.gitconfig

~/.fzf/bin/fzf:
	~/.fzf
	yes | ~/.fzf/install

~/.fzf:
	git clone https://github.com/junegunn/fzf.git ~/.fzf

