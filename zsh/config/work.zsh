# Added by Nix installer
if [ -e /Users/alexandcote/.nix-profile/etc/profile.d/nix.sh ]; then
    . /Users/alexandcote/.nix-profile/etc/profile.d/nix.sh;
fi

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && { type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; } }

# Enable / Disable beta flags
alias enable='rake dev:betas:enable BETA="online-store-sections-everywhere,online-store-sections-everywhere-internal"'
alias disable='rake dev:betas:disable BETA="online-store-sections-everywhere,online-store-sections-everywhere-internal"'
