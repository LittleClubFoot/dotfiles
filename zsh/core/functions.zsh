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

# Workflows
pomo() {
    arg1=$1
    shift
    args="$*"

    min=${arg1:?Example: pomo 15 Take a break}
    sec=$((min * 60))
    msg="${args:?Example: pomo 15 Take a break}"

    while true; do
        sleep "${sec:?}" && echo "${msg:?}" && notify-send -u critical -t 0 "${msg:?}"
    done
}
