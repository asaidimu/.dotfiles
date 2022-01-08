# add custom completions to path
fpath=($ZSH_CONFIG/completions $ZSH_CONFIG/functions $fpath)

# load stock functions
autoload -U compaudit compinit

# set up completion

# Construct zcompdump OMZ metadata
zcompdump_revision="#omz revision: $(builtin cd -q "$ZSH"; git rev-parse HEAD 2>/dev/null)"
zcompdump_fpath="#omz fpath: $fpath"

# Delete the zcompdump file if OMZ zcompdump metadata changed
if ! command grep -q -Fx "$zcompdump_revision" "$ZSH_COMPDUMP" 2>/dev/null \
   || ! command grep -q -Fx "$zcompdump_fpath" "$ZSH_COMPDUMP" 2>/dev/null; then
  command rm -f "$ZSH_COMPDUMP"
  zcompdump_refresh=1
fi

#  start compinit
if [[ $ZSH_DISABLE_COMPFIX != true ]]; then
  # Load only from secure directories
  compinit -i -C -d "${ZSH_COMPDUMP}"
else
  # If the user wants it, load from all found directories
  compinit -u -C -d "${ZSH_COMPDUMP}"
fi

# Append zcompdump metadata if missing
if (( $zcompdump_refresh )); then
  tee -a "$ZSH_COMPDUMP" &>/dev/null <<EOF

$zcompdump_revision
$zcompdump_fpath
EOF
fi

unset zcompdump_revision zcompdump_fpath zcompdump_refresh

# -- load libraries --
for lib in `find $ZSH_CONFIG/lib -name "*.zsh"`; do
    source "$lib"
done

# -- load plugins in plugins folder --
for script in `find $ZSH_CONFIG/plugins/ -name "*.zsh"`; do
    source "$script"
done


# vim:set et sw=4 ts=4 tw=80 ft=zsh:
