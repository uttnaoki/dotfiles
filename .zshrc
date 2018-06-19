# PROMPT="%{$fg[cyan]%}%~
# %{${reset_color}%}$ "

alias ls='ls -G'
alias zshrc='vim ~/.zshrc'
alias rc='vim ~/.zshrc'
alias ushell='source ~/.zshrc'

alias todo='cat ~/.todo'
alias etodo='vim ~/.todo'
alias memo='cat ~/.memo'
alias ememo='vim ~/.memo'

# alias raspi='ssh -l pi 150.46.5.116'
alias raspi='ssh -l naoki 150.46.5.116'

alias cdg='cd ~/git'
alias python='python3'

# git コマンドを短縮
alias ga='git add'
alias ga.='git add .'
alias gam='git commit -a -m'
alias gm='git commit'
alias gp='git push'
alias gpom='git push origin master'
alias gs='git status'
alias gl='git log'
alias grs='git reset --soft HEAD^'
alias grh='git reset --hard HEAD^'
alias g_unchanged='git update-index --assume-unchanged'
alias g_unchanged_undo='git update-index --no-assume-unchanged'
alias g_ls='git ls-files -v | grep "h "'

alias rmdump='rm ~/.zcompdump; rm $ZPLUG_HOME/zcompdump'

. ~/.aliases/alias4scripts
