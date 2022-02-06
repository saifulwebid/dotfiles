#!/usr/bin/env sh

mkdir -p ~/bin

for app in ./*; do
    if test -d $app && test -f $app/setup.sh; then
        . $app/setup.sh
    fi
done
