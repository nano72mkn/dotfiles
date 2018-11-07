init:
	mkdir -p ../.vim/
	ln -sf .dotfiles/color ../.vim/color
	ln -sf .dotfiles/vimrc ../.vimrc
	ln -sf .dotfiles/zshrc ../.zshrc
	git config --global alias.st status
	git config --global alias.co checkout
	git config --global alias.br branch
	git config --global alias.ci commit
	git config --global alias.df diff
	git config --global alias.gr grep
