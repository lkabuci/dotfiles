#! /bin/bash

# list of extensions
# `code --list-extensions >> extensions.txt`
# cat extensions.txt | xargs -n 1 code --install-extension

extensions=(
    HarryHopkinson.vim-theme
    ms-azuretools.vscode-docker
    ms-python.python
    ms-python.vscode-pylance
    ms-vscode-remote.remote-containers
    PKief.material-icon-theme
    vscodevim.vim
)

for extension in "${extensions[@]}"; do
    code --install-extension "$extension"
done

