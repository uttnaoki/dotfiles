#!/bin/sh

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
echo $OS' terminal\n'

# Mac の場合，Mac ディレクトリを参照
if [ $OS == "Mac" -o $OS == "WSL" ]; then
  for f in $OS/.??*
  do
    # ファイルの絶対パスを取得
    dotfile_path=$HOME/dotfiles/$f
    # ファイルパスの一番右の"/"以降の文字列を取得
    dotfile_name=${dotfile_path##*/}

    # 特定のファイルは pass
    [ "$dotfile_name" == ".git" ] && continue
    [ "$dotfile_name" == ".gitignore" ] && continue
    [ "$dotfile_name" == ".DS_Store" ] && continue

    # ファイルのリンクが既に貼られていれば skip
    if [ -h $HOME/$dotfile_name ]; then
      echo "[skip] "$OS"/"$dotfile_name
    # ファイルのリンクが既に貼られていなければ，シンボリックリンクを貼る
    else
      ln -s $dotfile_path $HOME/$dotfile_name
      echo "[OK] "$OS"/"$dotfile_name
    fi
  done
fi

# 各dotfileにリンクを貼る
for f in .??*
do
  # ファイルの絶対パスを取得
  dotfile_path=$HOME/dotfiles/$f
  # ファイルパスの一番右の"/"以降の文字列を取得
  dotfile_name=${dotfile_path##*/}

  # 特定のファイルは pass
  [ "$dotfile_name" == ".git" ] && continue
  [ "$dotfile_name" == ".gitignore" ] && continue
  [ "$dotfile_name" == ".DS_Store" ] && continue

  # ファイルのリンクが既に貼られていれば skip
  if [ -h $HOME/$dotfile_name ]; then
    echo "[skip] "$dotfile_name
  # ファイルのリンクが既に貼られていなければ，シンボリックリンクを貼る
  else
    ln -s $dotfile_path $HOME/$dotfile_name
    echo "[OK] "$dotfile_name
  fi
done
