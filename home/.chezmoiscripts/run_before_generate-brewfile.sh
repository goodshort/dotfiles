#!/bin/bash

if [[ -n $HOMEBREW_BUNDLE_FILE ]]; then
    echo "Generating Brewfile..."
    brew bundle dump --force --describe
    echo "Done, don't forget to run: chezmoi add $HOME/.config/homebrew/"
else
    echo "HOMEBREW_BUNDLE_FILE isn't set, impossible to generate Brewfile"
fi
echo "-------------------------------"