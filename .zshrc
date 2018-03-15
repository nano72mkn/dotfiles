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
PROMPT="
 %{${fg[cyan]}%}%~%{${reset_color}%} 
 [%n]$ "
#PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
PROMPT2='[%n]> '
SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
#RPROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}"
