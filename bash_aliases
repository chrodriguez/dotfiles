# Unix
alias tlf="tail -f"
alias ln='ln -v'
alias ...='../..'
alias l='ls'
alias ll='ls -al'
alias lh='ls -Alh'
alias e="$EDITOR"
alias v="$VISUAL"
alias be="bundle exec"
alias http-server="python -mSimpleHTTPServer"

# Bundler
alias b="bundle"


# Include custom aliases
[[ -f ~/.bash_aliases.local ]] && source ~/.bash_aliases.local
