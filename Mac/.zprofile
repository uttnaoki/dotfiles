source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# theme (https://github.com/sindresorhus/pure#zplug)　好みのスキーマ
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"

# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# history関係
zplug "zsh-users/zsh-history-substring-search"
# タイプ補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# Then, source plugins and add commands to $PATH
zplug load

# 補完
autoload -U compinit; compinit -C
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ctrl + d でログアウトさせない(10回連続タイプでログアウト)
setopt ignoreeof

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
