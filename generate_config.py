"""A quick Python script to allow me
to compartmentalise my i3 config file

Make sure to add the following to your sxhkdrc file:

# Regenerate config file and restart
{super,alt} + shift + r
	python $HOME/.config/i3/generate_config.py && i3-msg restart
"""
from os import listdir, remove, environ

# i3 config path
CONFIG_PATH = f"{environ.get('HOME')}/.config/i3/"

# List of compartmentalised configs
config_files = listdir(f"{CONFIG_PATH}configs/")

# Ensure 'prefix' is first element in the list
config_files.remove("prefix")
config_files.insert(0, "prefix")

# Delete current i3 config
remove(f"{CONFIG_PATH}config")

# Add all the config compentents to the i3 config file to generate a new config
for directories in config_files:
    with open(f"{CONFIG_PATH}configs/{directories}", encoding="utf-8") as conf:
        with open(f"{CONFIG_PATH}config", "a+", encoding="utf-8") as config:
            config.write(conf.read())
