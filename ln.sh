#!/bin/bash
SCRIPT_PATH="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"
ln -s $SCRIPT_PATH/fonts ~/.local/share/fonts
ln -s $SCRIPT_PATH/awesome ~/.config/awesome
ln -s $SCRIPT_PATH/wezterm ~/.config/wezterm
ln -s $SCRIPT_PATH/mpd ~/.config/mpd
ln -s $SCRIPT_PATH/mpDris2 ~/.config/mpDris2
ln -s $SCRIPT_PATH/ncmpcpp ~/.config/ncmpcpp
fc-cache -fv