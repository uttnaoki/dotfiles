#!/bin/bash

# ターミナル(OS)の種類を判断
if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
elif [ $(echo $(uname -r) | grep -e 'Microsoft') ]; then
  OS='WSL'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
  OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
  OS='undefined' 
fi
echo $OS' terminal'

# Mac の場合，Mac ディレクトリを参照
if [ $OS == "Mac" ]; then
  for f in Mac/.??*
  do
    [[ "$f" == ".DS_Store" ]] && continue
    ln -s $HOME/dotfiles/$f $HOME/${f#*/}
  done
fi

# 各dotfileにリンクを貼る
for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".gitignore" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue
  ln -s $HOME/dotfiles/$f $HOME/$f
done
