export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"
PATH=$PATH:/usr/local/texlive/2017/bin/x86_64-darwin/
eval "$(pyenv init -)"

# ssh key の追加
ssh-add -K ~/.ssh/github 2> /dev/null

alias ls='ls -G'
