# Aliases
alias ls='ls -F --color=auto'
alias vim=nvim

# Zsh settings
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL
# History
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt NO_CASE_GLOB
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST 
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Keybindings for substring search plugin. Maps up and down arrows.
bindkey -M main '^[OA' history-substring-search-up
bindkey -M main '^[OB' history-substring-search-down
bindkey -M main '^[[A' history-substring-search-up
bindkey -M main '^[[B' history-substring-search-up

# Keybindings for autosuggestions plugin
bindkey '^ ' autosuggest-accept
bindkey '^f' autosuggest-accept

# Plugin settings
PLUGIN_PATH=~/.dotfiles/zsh_plugins
fpath=($PLUGIN_PATH/zsh-completions/src $fpath)
source $PLUGIN_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGIN_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh
source $PLUGIN_PATH/fzf.plugin.zsh
source $PLUGIN_PATH/sudo.plugin.zsh
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u
source $PLUGIN_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
