#!/bin/bash
SCRIPT_PATH="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"
ln $SCRIPT_PATH/.Xresources ~/.Xresources
ln $SCRIPT_PATH/.bashrc ~/.bashrc
ln -s $SCRIPT_PATH/bin ~/.local/bin
ln -s $SCRIPT_PATH/dwm ~/.config/dwm
ln -s $SCRIPT_PATH/cava ~/.config/cava
ln -s $SCRIPT_PATH/gtk-3.0 ~/.config/gtk-3.0
ln -s $SCRIPT_PATH/kitty ~/.config/kitty
ln -s $SCRIPT_PATH/rofi ~/.config/rofi
ln -s $SCRIPT_PATH/sfetch ~/.config/sfetch 
