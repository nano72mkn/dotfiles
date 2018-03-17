# LANG
export LANG=ja_JP.UTF-8

# ビープ音鳴らさない
setopt nobeep

# 補完
autoload -U compinit
compinit

# PROMPT
autoload colors
colors
#PROMPT="%{$fg[green]%}%m%(!.#.$) %{$reset_color%}"
#PROMPT="
# %{${fg[cyan]}%}%~%{${reset_color}%} 
# [%n@%m]"
#PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
PROMPT2='[%n]> '
SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
#RPROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}"

#PROMPT git
autoload -Uz vcs_info
setopt prompt_subst

zstyle ':vcs_info:git:*' check-for-changes true
 #formats 設定項目で %c,%u が使用可
zstyle ':vcs_info:git:*' stagedstr "%F{green}!"
 #commit されていないファイルがある
zstyle ':vcs_info:git:*' unstagedstr "%F{magenta}+"
 #add されていないファイルがある
zstyle ':vcs_info:*' formats "%F{cyan}%c%u(%b)%f"
 #通常
zstyle ':vcs_info:*' actionformats '[%b|%a]'
 #rebase 途中,merge コンフリクト等 formats 外の表示

precmd () { vcs_info }

# color
blue_g1='%{[38;5;082m%}'
blue_g2='%{[38;5;085m%}'
blue_g3='%{[38;5;087m%}'
reset='%{[0m%}'

PROMPT="
%{${fg[cyan]}%}%~%{${reset_color}%} ${vcs_info_msg_0_}
%n@%m ${blue_g1}❯${blue_g2}❯${blue_g3}❯${reset} "


