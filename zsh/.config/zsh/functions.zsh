# -- Open man pages in vim ---
man(){
  local page=$(/sbin/man "$@")
  [  -n "${page}" ] && echo $page | vim -c 'set filetype=man' -c 'set buftype=nofile'

}

# -- Similarities --
#similar (){
  #diff --unchanged-group-format='@@ %dn,%df  %<'\
    #--old-group-format='' --new-group-format='' \
    #--changed-group-format='' $1 $2
#}

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

# append to ignore files.
ig () {
	[ -e ".gitignore" ] && echo "$@" | xargs | sed -E -E "s/\s/\n/g" >> .gitignore
}

# vim:set et sw=4 ts=4 tw=80 ft=zsh:
