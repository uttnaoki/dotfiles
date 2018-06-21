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

# ホームディレクトリに dotfile のリンクを貼る．
function remove_link() {
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
    if [ -h $HOME/$dotfile_name ]; then
      rm $HOME"/"$dotfile_name
      echo "[OK] "$dotfile_name
    # ファイルのリンクが貼られていなければ skip
    else
      echo "[skip] "$dotfile_name
    fi
  done
}

# 各OS(ターミナル)に応じて dotfile のリンクを貼る．
if [ ! $OS = "undefined" ]; then
  remove_link $OS"/"
fi

# 各OS(ターミナル)共通の dotfile のリンクを貼る．
remove_link ""
