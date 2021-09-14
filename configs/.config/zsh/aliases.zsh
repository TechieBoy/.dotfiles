# Use bat instead of cat if avaliable
if type bat > /dev/null; then
    alias cat='bat -P --theme "Monokai Extended Origin" --style=plain'
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi

alias ls='ls -AF --color=auto'
alias ll='ls -Alh --color=auto'
alias vim=nvim
alias c=clear
alias t=tmux

# Open file, asks for sudo if different owner
function o() {
    if [ -O "$1" ]; then nvim $1; else sudoedit $1; fi
}
