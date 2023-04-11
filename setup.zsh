#!/usr/bin/env zsh
for prog in zsh tmux nvim stow npm pip3; do
    hash $prog 2>/dev/null || { echo >&2 "I require $prog but it's not installed.  Aborting."; exit 1; }
done

echo "Installing neovim configs"
npm install -g neovim && npm update -g neovim
pip3 install --user --upgrade pynvim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

cd ~/.dotfiles
stow -v configs

for prog in alacritty xsel fzf rg bat ranger ttf-iosevka language-servers; do
    hash $prog 2>/dev/null || { echo >&2 "Did not find $prog, please install it."; }
done
