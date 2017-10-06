# Keyboard bindings
# --------------------------------------

bindkey -v
bindkey -M menuselect '^[[Z' reverse-menu-complete
bindkey "^r" history-incremental-search-backward
bindkey "^w" history-incremental-search-forward
bindkey ' ' magic-space

KEYTIMEOUT=1
