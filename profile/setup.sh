#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if test ~/dotfiles/profile/profile -ef ~/.profile; then
    echo "profile found and configured already, skipping..."
    return
fi

if test -f ~/.profile; then
    echo "profile found and not configured; configuring..."
else
    echo "profile not found; configuring..."
fi

rm -f ~/.profile
ln -s ~/dotfiles/profile/profile ~/.profile
