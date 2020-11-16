#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! test -e npm; then
    echo "npm not found; skipping..."
    return
fi

if test ~/dotfiles/npm/npmrc -ef ~/.npmrc; then
    echo "npm found and configured already; skipping..."
    return
fi

echo "npm found and not configured; configuring..."

if ! test -d ~/.npm-global/bin; then
    mkdir -p ~/.npm-global/bin
fi

rm -f ~/.npmrc
ln -s ~/dotfiles/npm/npmrc ~/.npmrc
