if [[ -z "$CONFIG_ZSH" ]]; then
  export CONFIG_ZSH=$HOME/.config/dotfiles/zsh
fi
CONFIG_ZSH_CORE=$CONFIG_ZSH/core
CONFIG_ZSH_THEMES=$CONFIG_ZSH/themes

# Flag to specific the shell theme
ZSH_THEME="p10k"
#ZSH_THEME="starship"

# Source the exports first to avoid dependency issues
source $CONFIG_ZSH_CORE/exports.zsh
source $CONFIG_ZSH_CORE/aliases.zsh
source $CONFIG_ZSH_CORE/functions.zsh
if [[ "$ZSH_THEME" == *"p10k"* ]]; then
  # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # Initialization code that may require console input (password prompts, [y/n]
  # confirmations, etc.) must go above this block; everything else may go below.
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi

  source $CONFIG_ZSH_THEMES/ohmyzsh.zsh
  # To customize prompt, run `p10k configure` or edit ~/.config/dotfiles/zsh/p10k.zsh.
  [[ ! -f $CONFIG_ZSH_THEMES/p10k.zsh ]] || source $CONFIG_ZSH_THEMES/p10k.zsh
elif [[ "$ZSH_THEME" == *"starship"* ]]; then
  eval "$(starship init zsh)"
fi
