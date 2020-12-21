# Added by Nix installer
if [ -e /Users/alexandrecote/.nix-profile/etc/profile.d/nix.sh ]; then
    . /Users/alexandrecote/.nix-profile/etc/profile.d/nix.sh;
fi

# Enable / Disable beta flags
alias enable='rake dev:betas:enable BETA="online-store-sections-everywhere,online-store-sections-everywhere-internal"'
alias disable='rake dev:betas:disable BETA="online-store-sections-everywhere,online-store-sections-everywhere-internal"'
