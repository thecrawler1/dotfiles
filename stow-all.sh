#!/bin/bash

declare -A targets

targets["etc"]="/etc/"
targets["udev"]="/etc/udev/rules.d/"
targets["bin"]="/bin/"

for file in ./*/; do
  name_file=$(basename "$file")
  
  if [[ -v targets["$name_file"] ]]; then
    target="${targets["$name_file"]}"
    stow_cmd="sudo stow"
  else
    target=$HOME
    stow_cmd="stow"
  fi

  $stow_cmd "$@" -t "$target" "$name_file"
done
