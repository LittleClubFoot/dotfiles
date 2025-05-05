zsh-config () {
  cd $ZSH_DOTFILES
  nvim .
  cd -
  source $HOME/.zshrc
}
