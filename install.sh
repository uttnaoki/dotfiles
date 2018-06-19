#!/bin/bash

# ターミナル(OS)の種類を判断
if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
  OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
  OS='undefined' 
fi

# Mac の場合，Mac ディレクトリを参照
for f in Mac/.??*
do
    [[ "$f" == ".DS_Store" ]] && continue
    ln -s $HOME/dotfiles/$f $HOME/${f#*/}
done

# 各dotfileにリンクを貼る
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    ln -s $HOME/dotfiles/$f $HOME/$f
done
