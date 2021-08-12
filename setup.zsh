#!/usr/bin/env zsh
git submodule init && git submodule update
wget -nc https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/fzf/fzf.plugin.zsh -P zsh_plugins
wget -nc https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh -P zsh_plugins
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
cd zsh_plugins/autojump && ./install.py
echo "All done! Install fzf and rg using system repos"
