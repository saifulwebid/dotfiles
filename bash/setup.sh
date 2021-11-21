#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! test -e bash; then
    echo "bash not found; skipping..."
    return
fi

if test ~/dotfiles/bash/bashrc -ef ~/.bashrc; then
    echo "bash found and configured already, skipping..."
    return
fi

echo "bash found and not configured; configuring..."

rm -f ~/.bashrc
ln -s ~/dotfiles/bash/bashrc ~/.bashrc
