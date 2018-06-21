#!/bin/sh

# OS(ターミナル)の種類を判断
if [ "$(uname)" = 'Darwin' ]; then
  OS='Mac'
elif [ $(echo $(uname -r) | grep -e 'Microsoft') ]; then
  OS='WSL'
# elif [ "$(expr substr $(uname -s) 1 5)" = 'Linux' ]; then
#   OS='Linux'
# elif [ "$(expr substr $(uname -s) 1 10)" = 'MINGW32_NT' ]; then
#   OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
  OS='undefined'
fi
echo $OS' terminal\n'

# 各OS(ターミナル)に応じて dotfile のリンクを貼る．
if [ ! $OS = "undefined" ]; then
  sh scripts/link_dotfiles_to_home.sh $OS"/"
fi

# 各OS(ターミナル)共通の dotfile のリンクを貼る．
sh scripts/link_dotfiles_to_home.sh ""
