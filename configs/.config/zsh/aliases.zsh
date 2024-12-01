# Use bat instead of cat if avaliable
if type bat > /dev/null; then
    alias cat='bat -P --theme "Monokai Extended Origin" --style=plain'
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
    export MANROFFOPT="-c"
fi

if type eza > /dev/null; then
    alias ls='eza --oneline --icons -a'
    alias ll='eza --icons --long --git -a'
else
    alias ls='ls -AF --color=auto'
    alias ll='ls -Alh --color=auto'
fi
alias vim=nvim
alias c=clear
alias htop=btop
alias gcloud=/opt/google-cloud-sdk/bin/gcloud
alias weather='curl wttr.in'
alias crypto="curl 'rate.sx/?qF&n=10'"
alias dcu='docker compose up -d'
alias dcd='docker compose down'

# Tmux aliases
alias t=tmux
alias ta='tmux attach -t'
alias tn='tmux new -A -s'
# tf to create a new session with current folder name. (attach if already exists)
function tf() {
    tmux new -A -s ${PWD##*/}
}

# Open file, asks for sudo if different owner
function o() {
    if [ -O "$1" ]; then nvim $1; else sudoedit $1; fi
}
