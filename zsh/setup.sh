#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! test -e zsh; then
    echo "zsh not found; skipping..."
    return
fi

if grep ". ~/dotfiles/zsh/zshrc" ~/.zshrc >/dev/null 2>&1; then
    echo "zsh found and configured already, skipping..."
    return
fi

echo "zsh found and not configured; configuring..."

echo "# START saifulwebid dotfile configuration on $TIMESTAMP" >> ~/.zshrc
echo ". ~/dotfiles/zsh/zshrc" >> ~/.zshrc
echo "# END saifulwebid dotfile configuration" >> ~/.zshrc
