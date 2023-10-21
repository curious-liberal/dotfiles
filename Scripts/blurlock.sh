#!/bin/bash
rm $HOME/.config/i3/tmp/screenunlocked.png
scrot $HOME/.config/i3/tmp/screenunlocked.png
convert $HOME/.config/i3/tmp/screenunlocked.png -blur 0x10 $HOME/.config/i3/tmp/screenblurred.png
convert $HOME/.config/i3/tmp/screenblurred.png $HOME/.config/i3/tmp/screenlock_overlay.png -gravity center -composite -matte $HOME/.config/i3/tmp/screenlock.png
i3lock -i $HOME/.config/i3/tmp/screenlock.png
