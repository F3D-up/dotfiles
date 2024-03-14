#!/bin/sh
LIST_OF_APPS="ripgrep dict ranger exa bat thefuck zoxide duf fzf btop tmate mycli jq fd-find"

apt update
apt install -y $LIST_OF_APPS

ln -s $(which fdfind) ~/.local/bin/fd
