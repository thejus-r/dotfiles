eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init zsh)":q

# Starship
export STARSHIP_config="$HOME/.config/starship.toml"
eval "$(starship init zsh)"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="/Users/mave/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/mave/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
