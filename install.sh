#!/usr/bin/env bash

set -euo pipefail

BASHRC="${HOME}/.bashrc"
ALIAS_URL="https://raw.githubusercontent.com/ajugeorge97/dotfiles/main/alias.sh"
LOAD_LINE=". <(curl -fsSL ${ALIAS_URL})"

touch "$BASHRC"

if grep -Fqx "$LOAD_LINE" "$BASHRC"; then
    echo "Alias loader already exists in $BASHRC"
else
    cp "$BASHRC" "${BASHRC}.backup.$(date +%Y%m%d-%H%M%S)"

    {
        echo
        echo "# Load aliases from ajugeorge97/dotfiles"
        echo "$LOAD_LINE"
    } >> "$BASHRC"

    echo "Alias loader added to $BASHRC"
fi

echo
echo "Reload your shell with:"
echo "source ~/.bashrc"
