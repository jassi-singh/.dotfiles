#!/bin/bash

ln -sf ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
echo "Symlinked .tmux.conf"

echo "Reload tmux config with: tmux source-file ~/.tmux.conf"
