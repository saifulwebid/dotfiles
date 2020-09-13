#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! test -e bash; then
    echo "bash not found; skipping..."
    return
fi

if grep ". ~/dotfiles/bash/bashrc" ~/.bashrc >/dev/null 2>&1; then
    echo "bash found and configured already, skipping..."
    return
fi

echo "bash found and not configured; configuring..."

echo "# START saifulwebid dotfile configuration on $TIMESTAMP" >> ~/.bashrc
echo ". ~/dotfiles/bash/bashrc" >> ~/.bashrc
echo "# END saifulwebid dotfile configuration" >> ~/.bashrc
