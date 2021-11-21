#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! test -e zsh; then
    echo "zsh not found; skipping..."
    return
fi

if test ~/dotfiles/zsh/zshrc -ef ~/.zshrc; then
    echo "zsh found and configured already, skipping..."
    return
fi

echo "zsh found and not configured; configuring..."

rm -f ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
