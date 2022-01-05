
# -- Open man pages in vim ---
function man(){
  local page=$(/sbin/man "$@")
  [  -n "${page}" ] && echo $page | vim -c 'set filetype=man' -c 'set buftype=nofile'

}
compdef _man vman

# -- Open a scratch buffer in vim ---
function scratch(){
  vim -c "set buftype=nofile" -c "set bufhidden=hide" -c "setlocal noswapfile"
}

# -- Open a new Note buffer in vim ---
function note(){
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

# _pjo(){
    #emulate -L zsh

    #typeset -a projects
    #for basedir ($PROJECTS_PATH); do
        #projects+=(${basedir}/*(/N))
    #done

    #compadd ${projects:t}
#}

#compdef _pj pj

# -- Source files ---
function source_file(){
  local file=$1
  [[ -z $file ]] && file="${HOME}/.zshrc"
  source $file
}

alias r=source_file

function timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# vim:set et sw=4 ts=4 tw=80 ft=zsh:
