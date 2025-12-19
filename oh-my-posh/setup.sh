#!/bin/bash

EVAL='eval "$(oh-my-posh init zsh --config $HOME/dotfiles/oh-my-posh/brando.omp.json)"'

ZSHRC="$HOME/.zshrc"

if ! grep -qxF "$EVAL" "$ZSHRC"; then
  echo "$EVAL" >> "$ZSHRC"
  echo "oh-my-posh configured."
else
  echo "$ZSHRC already configured, nothing to do."
fi
