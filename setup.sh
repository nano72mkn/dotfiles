#!/usr/bin/bash

## OSチェック
if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi

echo "$OS"

## 各関数
. ./func.sh

echo "セットアップを開始します"

## zsh
echo "\nzshの設定を開始します（y/n）"
ConfirmExecution ZshSetting

## vim
echo "\nvimの設定を開始します（y/n）"
ConfirmExecution VimSetting

## git
echo "\ngitの設定を開始します"
echo ".gitconfigが既にある場合上書きします（y/n）"
ConfirmExecution GitSetting

## tmux
echo "\ntmuxの設定を開始します（y/n）"
ConfirmExecution TmuxSetting

## fzf
echo "\nfzfの設定を開始します（y/n）"
ConfirmExecution FzfSetting

