export PATH="/usr/local/bin:$PATH"

export PATH="$HOME/.rbenv/shims:$PATH"

export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"

export PATH=$PATH:$HOME/node_modules/.bin

export PATH="/usr/local/opt/libpq/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libpq/lib"
export CPPFLAGS="-I/usr/local/opt/libpq/include"
export PKG_CONFIG_PATH="/usr/local/opt/libpq/lib/pkgconfig"

PATH=$PATH:/usr/local/texlive/2017/bin/x86_64-darwin/

#fpath=(/usr/local/share/zsh-completions $fpath)

eval "$(pyenv init -)"

# ssh key の追加
ssh-add -K ~/.ssh/github 2> /dev/null

alias ls='ls -G'
alias dps='docker ps -a'
alias dils='docker image ls -a'
