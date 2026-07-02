[[ $- == *i* ]] || return

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias c='clear'
alias h='history'

path() {
    printf '%s\n' "${PATH//:/$'\n'}"
}

# Safer file operations
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Human-readable output
alias df='df -h'
alias du='du -h'

# Git
if command -v git >/dev/null 2>&1; then
    alias g='git'
    alias gs='git status --short --branch'
    alias ga='git add'
    alias gc='git commit'
    alias gd='git diff'
    alias gl='git log --oneline --decorate --graph --all'
    alias gp='git push'
    alias gpl='git pull'
fi