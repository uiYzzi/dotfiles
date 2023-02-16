#!/bin/bash
sudo pacman -S paru
paru -S awesome-git
paru -Sy picom-git wezterm rofi acpi acpid ly acpi_call upower lxappearance-gtk3 \
jq inotify-tools polkit-gnome xdotool xclip gpick ffmpeg blueman redshift \
pipewire pipewire-alsa pipewire-pulse alsa-utils brightnessctl feh maim \
mpv mpd mpc mpdris2 python-mutagen ncmpcpp playerctl --needed
systemctl --user enable mpd.service
systemctl --user start mpd.service
systemctl enable ly.service