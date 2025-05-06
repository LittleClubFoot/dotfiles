# Config shortcuts
config-zsh () {
  cd $ZSH_DOTFILES
  nvim .
  cd -
  source $HOME/.zshrc
}

# Git
git-update-config-littlefoot () {
  git config user.name "LittleClubFoot"
  git config user.email "littlefoot@mailfence.com"
}

git-update-config-littlefoot-global () {
  git config --global user.name "LittleClubFoot"
  git config --global user.email "littlefoot@mailfence.com"
}
