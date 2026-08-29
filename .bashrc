# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

# Prompt Theme
# eval "$(starship init bash)"
eval "$(oh-my-posh init bash --config ~/Documents/ohmyposh_themes/dylans-theme-minimal-magenta.omp.toml)"

# Shortcut Aliases
alias config-bash="nvim ~/.bashrc"
alias config-alacritty="nvim ~/.config/alacritty/alacritty.toml"
alias config-kitty="nvim ~/.config/kitty/kitty.conf"
alias config-ghostty="nvim ~/.config/ghostty/config.ghostty"
alias config-starship="nvim ~/.config/starship.toml"
alias ascii-aquarium="npx ascii-aquarium"
source ~/z.sh
source ~/z.sh
source /usr/share/z/z.sh
source /usr/share/z/z.sh

eval "$(zoxide init bash)"
