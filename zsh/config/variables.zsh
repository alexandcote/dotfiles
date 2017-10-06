# Global variables
# --------------------------------------
export PATH="$HOME/.zsh/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Fun
export DEBUG=true

# Terminal config
export DISPLAY
export WORDCHARS='*?_[]~=&;!#$%^(){}'
export TERM="xterm-color"

# Timezone
export TZ="America/Montreal"

# History limits
export HISTFILE=$HOME/.zhistory
export HISTSIZE=1000000
export SAVEHIST=1000000

# Utilities
export PAGER='less'
export EDITOR='nvim'
export GIT_EDITOR='nvim'
export BROWSER='open'
export LESS="-+e -+f -R -+c -X -M -S -r"

# Locales
export LANG="en_US.UTF-8"
export LC_ALL=$LANG