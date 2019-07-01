#!/bin/sh

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

xset +fp ~/.local/share/fonts

# Powerline daemon
/usr/bin/powerline-daemon -q &

# -R restores the last colorscheme that was in use.
wal -R -n

# Compositor
compton &

# Active window focus
flashfocus &

# Background wallpaper
~/.fehbg &

# dwmStatus bar
~/bin/dwmStatus.sh &

# Rotate 2nd monitor to landscape
xrandr --output DisplayPort-1 --rotate left

# Suckless window tiling manager
exec dwm
