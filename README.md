# Dot files

![Picture of i3 rice](./i3.png)

## What's unique

### Compartmentalisation

Personally I believe the i3 config file is extremely messy and hard to maintain. Consequently I have compartmentalised it into several configuration files that a Python script strings together. Note that this Python script runs everytime i3 is reloaded using  ```$mod+Shift+r```. Furthermore ANYTHING in the *configs* directory will end up in the i3 configs file - therefore it's imperative **only** config files go in there. Additionally it is advisable to have a new line at the end of each config file to keep the actual i3 config file neat (although you'll probably never look at it again so it doesn't really matter).

### Bookmark system

In ```configs/keybindings``` you'll find the following lines:

```shell
# Run dmenu for bookmarks (open in default browser)
bindsym $mod+b exec xdg-open $(grep -v '^#' $HOME/.config/i3/bm.txt | dmenu -i -nb '#191919' -nf '#fea63c' -sb '#fea63c' -sf '#191919' -fn 'NotoMonoRegular:bold:pixelsize=22.5' | cut -d' ' -f1)
bindsym $alt+b exec xdotool type $(grep -v '^#' $HOME/.config/i3/bm.txt | dmenu -i -nb '#191919' -nf '#fea63c' -sb '#fea63c' -sf '#191919' -fn 'NotoMonoRegular:bold:pixelsize=22.5' | cut -d' ' -f1)

# Run dmenu to add bookmark
bindsym $mod+Shift+b exec echo -n | dmenu -i -nb '#191919' -nf '#fea63c' -sb '#fea63c' -sf '#191919' -fn 'NotoMonoRegular:bold:pixelsize=22.5' -p "URL: " >> $HOME/.config/i3/bm.txt
bindsym $alt+Shift+b exec echo -n | dmenu -i -nb '#191919' -nf '#fea63c' -sb '#fea63c' -sf '#191919' -fn 'NotoMonoRegular:bold:pixelsize=22.5' -p "URL: " >> $HOME/.config/i3/bm.txt
```

```$mod+b``` allows bookmarks to be searched using dmenu and the search to open in the default browser. Alternatively ```$alt+b``` will use *xdotool type* to type it out; useful if you have a search bar selected (usually ```ctrl+l``` in most browsers. Note that you can also add bookmarks too; experiment as you like!

### Fake webcam in scripts

This will require some basic linux knowledge (or research) to setup by essentially allows you to stream video files to your webcam.

### Knit

Essentially this command allows me to render RMarkdown files easily. To install run the following:

```shell
# Because it's a personal script
sudo cp knit /usr/local/bin/
# To install just for one user (I don't do this)
sudo cp knit ~/bin/knit
```

# Shell settings
Just run the following:

```shell
sudo pacman -Syyu zsh && sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Then run ```chsh``` and enter ```/bin/zsh``` when prompted.

Next cp over the .zshrc file from here to your home directory and BOOM!

# Another note

Make sure to ```cd``` into *$HOME/.config/i3* and run ```git clone https://github.com/tobi-wan-kenobi/bumblebee-status.git```

Also might be a good idea to copy over the vscodeconfig file to VScode as well as installing the font VictorMono (which is amazing!)

# There's a few dependancies but you'll work them out ;)

