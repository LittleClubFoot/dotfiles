config-zsh () {
  cd $ZSH_DOTFILES
  nvim .
  cd -
  source $HOME/.zshrc
}
