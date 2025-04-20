#!/bin/bash

echo "setting up oh-my-posh..."

#mkdir -p ~/.poshthemes

#oh-my-posh init bash --config "$(brew --prefix oh-my-posh)/themes/spaceship.omp.json" > ~/.poshtheme

eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json)"

echo "done (hopefully?)"
