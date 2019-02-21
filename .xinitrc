#!/bin/sh

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

xset +fp ~/.local/share/fonts

# Powerline daemon
/usr/bin/powerline-daemon -q &

# -R restores the last colorscheme that was in use.
wal -R -n

# Compositor
compton &

# Background wallpaper
~/.fehbg &

# dwmStatus bar
~/bin/dwmStatus.sh &

# Suckless window tiling manager
exec dwm
