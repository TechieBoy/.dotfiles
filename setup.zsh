#!/usr/bin/env zsh
for prog in stow zsh nvim npm pip3; do
    hash $prog 2>/dev/null || { echo >&2 "I require $prog but it's not installed.  Aborting."; exit 1; }
done

# Make npm global behave first
# https://npm.github.io/installation-setup-docs/installing/a-note-on-permissions.html
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

echo "Installing zsh-plugins"
# Plugins with git directories
git submodule init && git submodule update --recursive --remote

# Standalone Plugins
rm -rf zsh_plugins/*.zsh
wget -i zsh_standalone_plugins.txt -P zsh_plugins

# Plugins with Custom install scripts
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
cd zsh_plugins/autojump && ./install.py
echo "Done!"

echo "Installing neovim configs"
npm install -g neovim && npm update -g neovim
pip3 install --user --upgrade pynvim

cd ~/.dotfiles
for folder in configs zsh; do
    stow -v $folder
done

echo "All done! Install alacritty,fzf, source code pro font, rg and language servers using system repos"
