# Aliases
alias ls='ls -F --color=auto'
alias vim=nvim

# Keybindings for substring search plugin. Maps up and down arrows.
bindkey -M main '^[OA' history-substring-search-up
bindkey -M main '^[OB' history-substring-search-down
bindkey -M main '^[[A' history-substring-search-up
bindkey -M main '^[[B' history-substring-search-up

# Keybindings for autosuggestions plugin
bindkey '^ ' autosuggest-accept
bindkey '^f' autosuggest-accept


fpath=(~/.dotfiles/zsh_plugins/zsh-completions/src $fpath)
source ~/.dotfiles/zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.dotfiles/zsh_plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.dotfiles/zsh_plugins/fzf.plugin.zsh
source ~/.dotfiles/zsh_plugins/sudo.plugin.zsh
eval "$(starship init zsh)"
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u
source ~/.dotfiles/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
