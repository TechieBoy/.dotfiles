# Basic plugins
zadd_plugin "zpm-zsh/colors"
zadd_plugin "djui/alias-tips"
zadd_plugin "zpm-zsh/autoenv"
zadd_standalone "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh"

# Remember last working directory
# This plugin needs ZSH_CACHE_DIR to be set
[ -d ~/.cache/zsh ] || mkdir ~/.cache/zsh
export ZSH_CACHE_DIR=~/.cache/zsh
zadd_standalone "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/last-working-dir/last-working-dir.plugin.zsh"

# Completions
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zadd_plugin "zsh-users/zsh-completions"
fpath=($ZSHDIR/plugins/zsh-completions/src $fpath)

# Autosuggestions plugin
zadd_plugin "zsh-users/zsh-autosuggestions"
bindkey '^ ' autosuggest-accept
bindkey '^f' autosuggest-accept

# Keybindings for substring search plugin. Maps up and down arrows.
zadd_plugin "zsh-users/zsh-history-substring-search"
bindkey -M main '^[OA' history-substring-search-up
bindkey -M main '^[OB' history-substring-search-down
bindkey -M main '^[[A' history-substring-search-up
bindkey -M main '^[[B' history-substring-search-down

# Autojump
zadd_plugin "wting/autojump" "cd $ZSHDIR/plugins/autojump && ./install.py" "cd $ZSHDIR/plugins/autojump && ./uninstall.py"
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# Git aliases
zadd_standalone "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/git/git.plugin.zsh" 
# FZF integration
zadd_standalone "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/fzf/fzf.plugin.zsh"
# Alt-C searches all directories in $HOME
export FZF_ALT_C_COMMAND='rg --files --hidden --null -g "!.git/*" -g "!.cache/*" ~ | xargs --null dirname | uniq'

# Syntax highlighting
zadd_plugin "zsh-users/zsh-syntax-highlighting"

# Starship prompt
hash starship 2>/dev/null || { echo >&2 "Starship (https://starship.rs) not found, please install it." }
eval "$(starship init zsh)"
