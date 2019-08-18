# Unix
alias tlf="tail -f"
alias ln='ln -v'
alias mkdir='mkdir -p'
alias ...='../..'
alias l='ls'
alias ll='ls -al'
alias lh='ls -Alh'
alias e="$EDITOR"
alias v="$VISUAL"
alias mysql56="mysql --defaults-group-suffix=56"
alias be="bundle exec"
alias http-server="python -mSimpleHTTPServer"
alias rancher="rancher-0.6.12"

# Bundler
alias b="bundle"


# Include custom aliases
[[ -f ~/.bash_aliases.local ]] && source ~/.bash_aliases.local
