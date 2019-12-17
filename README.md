# dotfiles

## 設置
```
cd ~
git clone git@github.com:MiyahiraShota/dotfiles.git .dotfiles
cd .dotfiles
make hogehoge
```
hogehogeなしだと全部入ります。  

zshのみはこちら
```
make set_zsh_env && make set_zsh
```

## 必要なやつ
zsh
tmux
fzf
rg

## tmux
### Linux
やってない

### amazon linux
```
sudo yum install tmux
```

### mac
```
brew install tmux
```

## nvim
### Linux
やってない

### amazon linux
不明。今の所できてない

### mac
```
brew install neovim
```


npm install --global vscode-html-languageserver-bin
npm -g install intelephense
npm install -g vscode-css-languageserver-bin
