# add custom completions to path
#fpath=($ZSH_CONFIG/completions $ZSH_CONFIG/functions $fpath)

# load stock functions
 autoload -U compaudit compinit

#  start compinit
if [[ $ZSH_DISABLE_COMPFIX != true ]]; then
  # Load only from secure directories
  compinit -i -C -d "${ZSH_COMPDUMP}"
else
  # If the user wants it, load from all found directories
  compinit -u -C -d "${ZSH_COMPDUMP}"
fi

# -- load libraries --
for lib in `find $ZSH_CONFIG/lib -name "*.zsh"`; do
    source "$lib"
done

# -- load plugins in plugins folder --
for script in `find $ZSH_CONFIG/plugins/ -name "*.zsh"`; do
    source "$script"
done


# vim:set et sw=4 ts=4 tw=80 ft=zsh:
