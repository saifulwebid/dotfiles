#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! command -v ssh >/dev/null; then
    echo "ssh not found; skipping..."
    return
fi

if test ~/dotfiles/ssh/config -ef ~/.ssh/config; then
    echo "ssh found and configured already; skipping..."
    return
fi

echo "ssh found and not configured; configuring..."

mkdir -p ~/.ssh
rm -f ~/.ssh/config
ln -s ~/dotfiles/ssh/config ~/.ssh/config
