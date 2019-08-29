function ConfirmExecution() {
  read input

  if [ -z $input ] ; then
    echo "yes または no を入力して下さい"
    ConfirmExecution $1
  elif [ $input = 'yes' ] || [ $input = 'YES' ] || [ $input = 'y' ] ; then
    $1
  elif [ $input = 'no' ] || [ $input = 'NO' ] || [ $input = 'n' ] ; then
    echo ""
  else
    echo "yes または no を入力して下さい."
    ConfirmExecution $1
  fi
}

function ZshSetting() {
  echo "envファイルを生成"
  make set_zsh_env

  echo "\n設定ファイルを配置"
  make set_zsh
}

function VimSetting() {
  echo "\n設定ファイルを配置"
  make set_vim
  make set_nvim
  make set_dein
}

function GitSetting() {
  echo "\n設定ファイルを配置"
  make set_git
}

function TmuxSetting() {
  echo "\n設定ファイルを配置"
  make set_tmux
}

function FzfSetting() {
  echo "\nfzfがない場合installします"
  make ~/.fzf/bin/fzf
}

