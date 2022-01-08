# -- colors --
bold(){
  echo "\033[1;37;48m${@}";
}
bold_blue(){
  echo "\033[1;34;48m${@}";
}
bold_cyan(){
  echo "\033[1;36;48m${@}";
}
bold_green(){
  echo "\033[1;32;48m${@}";
}
bold_grey(){
  echo "\033[1;30;48m${@}";
}
bold_red(){
  echo "\033[1;31;48m${@}";
}
bold_yellow(){
  echo "\033[1;33;48m${@}";
}
blue(){
  echo "\033[0;34;48m${@}";
}
cyan(){
  echo "\033[0;36;48m${@}";
}
green(){
  echo "\033[0;32;48m${@}";
}
grey(){
  echo "\033[0;37;48m${@}";
}
red(){
  echo "\033[0;31;48m${@}";
}
yellow(){
  echo "\033[0;33;48m${@}";
}
header(){
  echo "\033[35m${@}";
}
underline(){
  echo "\033[4m${@}";
}
white(){
  echo "\033[0m";
}

# -- Open man pages in vim ---
man(){
  local page=$(/sbin/man "$@")
  [  -n "${page}" ] && echo $page | vim -c 'set filetype=man' -c 'set buftype=nofile'

}
compdef _man vman

# -- Open a scratch buffer in vim ---
scratch(){
  vim -c "set buftype=nofile" -c "set bufhidden=hide" -c "setlocal noswapfile"
}

# -- Open a new Note buffer in vim ---
note(){
  filename=$1
  vim -c 'Note' "$filename"
}

# -- Similarities --
similar (){
  diff --unchanged-group-format='@@ %dn,%df  %<'\
    --old-group-format='' --new-group-format='' \
    --changed-group-format='' $1 $2
}

tv(){xrandr --output HDMI1 --auto --left-of eDP1 && i3-msg "restart"; }

# -- Source files ---
source_file(){
  local file=$1
  [[ -z $file ]] && file="${HOME}/.zshrc"
  source $file
}

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do time $shell -i -c exit; done
}

# vim:set et sw=4 ts=4 tw=80 ft=zsh:
