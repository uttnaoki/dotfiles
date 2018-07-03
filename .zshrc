# 規定のエディタをVimに変更
export EDITOR=vim

# 文字コード周り
#export LANG=ja_JP.UTF-8

alias zshrc='vim ~/.zshrc'
alias rc='vim ~/.zshrc'
alias ushell='source ~/.zshrc'

alias todo='cat ~/.todo'
alias etodo='vim ~/.todo'

alias cdg='cd ~/git'
alias python='python3'
alias dotfiles='cd ~/dotfiles'

# git コマンドを短縮
alias ga='git add'
alias ga.='git add .'
alias gam='git commit -a -m'
alias gm='git commit'
alias gp='git push'
alias gpom='git push origin master'
alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias grs='git reset --soft HEAD^'
alias grh='git reset --hard HEAD^'
alias g_unchanged='git update-index --assume-unchanged'
alias g_unchanged_undo='git update-index --no-assume-unchanged'
alias g_ls='git ls-files -v | grep "h "'

alias rmdump='rm ~/.zcompdump; rm $ZPLUG_HOME/zcompdump'

. ~/.aliases/alias4scripts
. ~/.tmp_aliases
