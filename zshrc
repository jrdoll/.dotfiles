# Enable vi bindings for zsh
bindkey -v

eval "$(pyenv init -)"

# Enable control-R reverse history search despite vi bindings
bindkey '^R' history-incremental-search-backward

PS1='%~: '

alias marco='export LWD=${PWD}'
alias polo='cd ${LWD}'
