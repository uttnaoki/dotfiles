#!/bin/sh

for f in $1.??*
do
  # ファイルの絶対パスを取得
  dotfile_path=$HOME/dotfiles/$f
  # ファイルパスの一番右の"/"以降の文字列を取得
  dotfile_name=${dotfile_path##*/}

  # 特定のファイルは pass
  [ "$dotfile_name" = ".git" ] && continue
  [ "$dotfile_name" = ".gitignore" ] && continue
  [ "$dotfile_name" = ".DS_Store" ] && continue

  # ファイルのリンクが既に貼られていれば，ホームディレクトリのリンクを削除
  if [ -h $HOME"/"$dotfile_name ]; then
    unlink $HOME"/"$dotfile_name
    echo "[\033[32mOK\033[0m] "$dotfile_name
  # ファイルの実体(!=リンク)があれば，NG を出力
  elif [ -e $HOME"/"$dotfile_name ]; then
    echo "[\033[31mNG\033[0m] "$dotfile_name
  # ファイルのリンクが貼られていなければ skip
  else
    echo "[\033[36mskip\033[0m] "$dotfile_name
  fi
done
