PLUGIN_PATH=~/.dotfiles/zsh_plugins
## Completions and search
fpath=($PLUGIN_PATH/zsh-completions/src $fpath)
source $PLUGIN_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGIN_PATH/zsh-history-substring-search/zsh-history-substring-search.zsh
source $PLUGIN_PATH/alias-tips/alias-tips.plugin.zsh

## Autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

for f in $PLUGIN_PATH/*.zsh; do
    source $f
done
## Syntax highlighting
source $PLUGIN_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Starship prompt
eval "$(starship init zsh)"

