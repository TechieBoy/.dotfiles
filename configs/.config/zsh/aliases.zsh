if type bat > /dev/null; then
    alias cat='bat -P --theme "Monokai Extended Origin" --style=plain'
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi
alias ls='ls -AF --color=auto'
alias vim=nvim
alias c=clear
alias t=tmux
