#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
dotfiles_dir="$(cd "$script_dir/.." && pwd)"

file_names=(
  ".zshrc"
)

for file_name in "${file_names[@]}"; do
  source_file="$dotfiles_dir/$file_name"
  target_file="$HOME/$file_name"

  if [[ ! -f "$source_file" ]]; then
    echo "Missing source file: $source_file" >&2
    exit 1
  fi

  ln -sfn "$source_file" "$target_file"
  echo "Linked $target_file -> $source_file"
done
