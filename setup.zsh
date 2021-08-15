#!/usr/bin/env zsh
for prog in zsh tmux nvim stow npm pip3; do
    hash $prog 2>/dev/null || { echo >&2 "I require $prog but it's not installed.  Aborting."; exit 1; }
done

# Make npm global behave first
# https://npm.github.io/installation-setup-docs/installing/a-note-on-permissions.html
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

echo "Installing neovim configs"
npm install -g neovim && npm update -g neovim
pip3 install --user --upgrade pynvim

cd ~/.dotfiles
for folder in configs zsh tmux; do
    stow -v $folder
done

needed_progs=(alacritty fzf source-code-pro-font rg bat language-servers)
echo "All done! Install the following manually and you are done!"
printf '%s\n' "${needed_progs[@]}"
