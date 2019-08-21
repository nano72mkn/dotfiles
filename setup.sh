#!/usr/bin/bash

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

