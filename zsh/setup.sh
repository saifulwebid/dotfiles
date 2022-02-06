#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! command -v zsh >/dev/null; then
    echo "zsh not found; skipping..."
    return
fi

if test ~/dotfiles/zsh/zshrc -ef ~/.zshrc && test ~/dotfiles/zsh/zprofile -ef ~/.zprofile; then
    echo "zsh found and configured already, skipping..."
    return
fi

echo "zsh found and not configured; configuring..."

rm -f ~/.zshrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc

rm -f ~/.zprofile
ln -s ~/dotfiles/zsh/zprofile ~/.zprofile
