if [[ -z "$ZSH_DOTFILES" ]]; then
  export ZSH_DOTFILES=$(pwd)
fi
ZSH_THEME="p10k"
#ZSH_THEME="starship"

source $ZSH_DOTFILES/exports.zsh
source $ZSH_DOTFILES/aliases.zsh
source $ZSH_DOTFILES/functions.zsh
if [[ "$ZSH_THEME" == *"p10k"* ]]; then
  # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # Initialization code that may require console input (password prompts, [y/n]
  # confirmations, etc.) must go above this block; everything else may go below.
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi

  source $ZSH_DOTFILES/ohmyzsh.zsh
  # To customize prompt, run `p10k configure` or edit ~/.config/dotfiles/zsh/p10k.zsh.
  [[ ! -f ~/.config/dotfiles/zsh/p10k.zsh ]] || source $ZSH_DOTFILES/p10k.zsh
elif [[ "$ZSH_THEME" == *"starship"* ]]; then
  eval "$(starship init zsh)"
fi
