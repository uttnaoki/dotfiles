# 規定のエディタをVimに変更
export EDITOR=vim

# 文字コード周り
#export LANG=ja_JP.UTF-8

alias zshrc='vim ~/.zshrc'
alias zshenv='vim ~/.zshenv'
alias zprofile='vim ~/.zprofile'
alias szh='source ~/.zshrc'

alias cdg='cd ~/git'
alias dotfiles='cd ~/dotfiles'

alias la='ls -a'

# git コマンドを短縮
alias ga='git add'
alias ga.='git add .'
alias gam='git commit -a -m'
alias gm='git commit'
alias gp='git push'
alias gpull='git pull'
alias gpom='git push origin master'
alias gs='git status'
alias gl='git log --oneline'
alias gd='git diff'
alias grs='git reset --soft HEAD^'
alias grh='git reset --hard HEAD^'
alias g_unchanged='git update-index --assume-unchanged'
alias g_unchanged_undo='git update-index --no-assume-unchanged'
alias g_ls='git ls-files -v | grep "h "'

# 同時に起動したzshの間でヒストリを共有
#setopt share_history

alias rmdump='rm ~/.zcompdump; rm $ZPLUG_HOME/zcompdump'

. ~/.aliases/alias4scripts
. ~/.tmp_aliases

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/naoki/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/naoki/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/naoki/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/naoki/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

alias ocimemo='vi /Users/naoki/Desktop/Oracle/oci_memo.txt'

# rbenv用
eval "$(rbenv init -)"

# Android SDK
export ANDROID_SDK=/Users/naoki/Library/Android/sdk
export PATH=$ANDROID_SDK/platform-tools:$PATH

# ctrl+系のコマンドを実行するため
bindkey -e
