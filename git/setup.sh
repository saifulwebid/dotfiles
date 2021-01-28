#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! test -e git; then
    echo "git not found; skipping..."
    return
fi

CONFIG_HOME="$XDG_CONFIG_HOME"
if [ -z "$CONFIG_HOME" ]; then
    CONFIG_HOME=~/.config
fi

if test ~/dotfiles/git/gitconfig -ef $CONFIG_HOME/git/config && test ~/dotfiles/git/gitignore -ef $CONFIG_HOME/git/ignore; then
    echo "git found and configured already; skipping..."
    return
fi

echo "git found and not configured; configuring..."

mkdir -p $CONFIG_HOME/git

rm -f $CONFIG_HOME/git/config
ln -s ~/dotfiles/git/gitconfig $CONFIG_HOME/git/config

rm -f $CONFIG_HOME/git/ignore
ln -s ~/dotfiles/git/gitignore $CONFIG_HOME/git/ignore
