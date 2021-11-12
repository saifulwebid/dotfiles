#!/usr/bin/env sh

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if ! test -e terraform; then
    echo "terraform not found; skipping..."
    return
fi

if test ~/dotfiles/terraform/terraformrc -ef ~/.terraformrc; then
    echo "terraform found and configured already; skipping..."
    return
fi

echo "terraform found and not configured; configuring..."

mkdir -p ~/.terraform.d/plugin-cache

rm -f ~/.terraformrc
ln -s ~/dotfiles/terraform/terraformrc ~/.terraformrc
