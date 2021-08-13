# Aliases
alias ls='ls -aF --color=auto'
alias vim=nvim

# Zsh settings
setopt AUTO_CD
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

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

# Keybindings for substring search plugin. Maps up and down arrows.
bindkey -M main '^[OA' history-substring-search-up
bindkey -M main '^[OB' history-substring-search-down
bindkey -M main '^[[A' history-substring-search-up
bindkey -M main '^[[B' history-substring-search-up

# Keybindings for autosuggestions plugin
bindkey '^ ' autosuggest-accept
bindkey '^f' autosuggest-accept

# Plugin settings
source ~/.dotfiles/zsh/load_plugins.zsh
# Path settings
export PATH=~/.npm-global/bin:$PATH
