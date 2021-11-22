#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if test ~/dotfiles/profile/profile -ef ~/.profile; then
    echo "profile found and configured already, skipping..."
    return
fi

echo "profile found and not configured; configuring..."

rm -f ~/.profile
ln -s ~/dotfiles/profile/profile ~/.profile
