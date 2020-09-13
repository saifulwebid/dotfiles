#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! test -e git; then
    echo "git not found; skipping..."
    return
fi

if test ~/dotfiles/git/gitconfig -ef ~/.gitconfig && test ~/dotfiles/git/gitignore -ef ~/.gitignore; then
    echo "git found and configured already; skipping..."
    return
fi

echo "git found and not configured; configuring..."

rm -f ~/.gitconfig
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

rm -f ~/.gitignore
ln -s ~/dotfiles/git/gitignore ~/.gitignore
