# Symlink ~/.zshrc to this file, or point it directly at ./zsh/.zshrc.
typeset -g DOTFILES_DIR="${${(%):-%N}:A:h}"

source "$DOTFILES_DIR/zsh/.zshrc"
