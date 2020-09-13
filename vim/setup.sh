#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! test -e vim; then
    echo "vim not found; skipping..."
    return
fi

if test ~/dotfiles/vim/vimrc -ef ~/.vimrc; then
    echo "vim found and configured already; skipping..."
    return
fi

echo "vim found and not configured; configuring..."

rm -f ~/.vimrc
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
