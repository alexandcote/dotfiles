# Global variables
# --------------------------------------

# GoLang
export GOPATH=$HOME

# Terminal config
export DISPLAY
export WORDCHARS='*?_[]~=&;!#$%^(){}'

# GPG
export GPG_TTY=`tty`

# Timezone
export TZ="America/Montreal"

# History limits
export HISTFILE=$HOME/.zhistory
export HISTSIZE=1000000
export SAVEHIST=1000000

# Utilities
export PAGER='less'
export EDITOR='code'
export VISUAL='nvim'
export GIT_EDITOR='nvim'
export BROWSER='open'
export LESS="-+e -+f -R -+c -X -M -S -r"

# Locales
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

# Lib GDA
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig:$PKG_CONFIG_PATH"

# Env
[ -f /opt/dev/dev.sh ] && export IS_WORK_COMPUTER=true || export IS_WORK_COMPUTER=false

# Path
export PATH="$HOME/.zsh/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
