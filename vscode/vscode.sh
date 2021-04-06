#!/bin/bash

#install extensions
source ./extensions.sh

#save settings
cat ./settings > $HOME/.config/Code\ -\ OSS/settings.json

#save keybindings
cat ./code_keybindings > $HOME/.config/Code\ -\ OSS/User/keybindings.json
