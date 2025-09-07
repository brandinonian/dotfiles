#!/bin/bash

echo "setting up oh-my-posh..."

# TODO
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json)"

echo "done"
