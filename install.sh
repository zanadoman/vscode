#!/bin/sh
rm -fr ~/.vscode ~/.vscode-shared ~/.config/Code
cat vscode-extensions.txt | xargs -L 1 code --install-extension
cp settings.json keybindings.json ~/.config/Code/User
