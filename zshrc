# Enable vi bindings for zsh
bindkey -v

# Enable control-R reverse history search despite vi bindings
bindkey '^R' history-incremental-search-backward

PS1='%~: '
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
