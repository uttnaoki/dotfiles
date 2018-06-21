# Created by newuser for 5.0.2
export LANG=ja_JP.UTF-8
autoload -Uz colors
colors
bindkey -e
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
setopt print_eight_bit
setopt no_beep
setopt no_flow_control
setopt ignore_eof
setopt interactive_comments
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt extended_glob

export TERM=xterm-256color
PROMPT="%{${fg[green]}%}[%n]%{$fg[cyan]%} %~
%{${reset_color}%}$ "

# windowsコマンド関係
. "$HOME/.aliases/alias4win"
alias exp="explorer ."

alias cdmnt="cd /mnt/c"
alias cdgit="cd /mnt/c/Users/木下直樹/Documents/GitHub"
alias ls='ls --color=auto'

