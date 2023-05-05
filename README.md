# Dot files for my i3 config

## About

These are my dot files for my i3 config.

## Custom compartmentalisation script

Personally I felt maintaining a bulky i3 file was extremely tedious and hard to understand. Consequently I have broken my i3 config file into various sections and used a Python script to regenerate the i3 config file by appending them together. Additionally I have added a line in my SXHKD config file (a program for efficient to configure key-bindings) so that when I reload my i3 config file using **Mod+shift+r** it automatically regenerates the config file using the script before doing so.

## Dependencies 
+ Bumblebee-status bar (and module related dependencies): https://github.com/tobi-wan-kenobi/bumblebee-status
+ SXHKD: https://github.com/baskerville/sxhkd
+ Python
+ i3-gaps
