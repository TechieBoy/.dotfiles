export ZSHDIR=~/.config/zsh
source $ZSHDIR/plugin_manager.zsh
# Zsh settings
setopt AUTO_CD
unsetopt BEEP

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

# Plugin settings
source_file "load_plugins.zsh"

# Aliases
source_file "aliases.zsh"

# Path settings
export PATH=~/.npm-global/bin:$PATH
