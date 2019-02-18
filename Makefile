init:
	make zsh
	make vim
	make nvim
	make dein
	make git
	make ${HOME}/.fzf/bin/fzf

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
	ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig

${HOME}/.fzf/bin/fzf: ${HOME}/.fzf
	yes | ${HOME}/.fzf/install
${HOME}/.fzf:
	git clone --depth 1 https://github.com/junegunn/fzf.git $@

