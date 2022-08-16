# -- path --
  export PATH="$PATH:/sbin:/usr/sbin:/usr/bin:/usr/share/bin:/usr/local/bin"
  export PATH="$PATH:/usr/lib/jvm/jdk-13.0.1/bin"
  export PATH="$PATH:/opt/mssql/bin"
  export PATH="$PATH:/opt/DataGrip-2020.3/bin"
  export PATH="$PATH:/opt/brave.com/brave"
  export PATH="$PATH:/opt/appimages"
  export PATH="$PATH:/snap/bin"
  export PATH="$PATH:/usr/games"
  export PATH="$PATH:/usr/lib/dart/bin"
  export PATH="$HOME/.local/bin:$PATH"

  export PATH=$(echo $PATH | sed "s/:/\n/g" | sort | uniq| xargs | sed "s/\s/:/g")
# -- oh-my-zsh --
  export ZSH="$HOME/.oh-my-zsh"

# -- projects folder --
  export PROJECTS_PATH="$HOME/projects"

# -- dotfiles --
  export DOTFILES="$HOME/.dotfiles"

# -- editor --
  export EDITOR=nvim
  export EDITOR_FILES=(cpp cxx cc c hh h inl asc txt TXT tex css html js json py)

# -- term --
  export TERM="st-256color"

# -- language --
  export LC_ALL="en_US.UTF-8"

# -- title --
  export DISABLE_AUTO_TITLE='true'

# -- nvim socket --
  export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim

# -- java --
_SILENT_JAVA_OPTIONS="$_JAVA_OPTIONS"
unset _JAVA_OPTIONS

# -- git --
export LOCAL_REPO="file:///home/git"
export GITHUB_USER="ausaidimu@gmail.com"

# -- xdg home --
export XDG_CONFIG_HOME="$HOME/.config"

# -- short host --
export SHORT_HOST=${HOST/.*/}

# Save the location of the current completion dump file.
export ZSH_COMPDUMP="${ZDOTDIR:-${HOME}}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

# library options
export COMPLETION_WAITING_DOTS="true"
export DISABLE_UNTRACKED_FILES_DIRTY="true"
export HIST_STAMPS="yyyy-mm-dd"

# sessionizer
export SESSIONIZER_TARGET_LIST="${HOME}/.dotfiles/personal/sessionizer/paths"
export SESSIONIZER_LIST_GENERATOR="${HOME}/.dotfiles/personal/sessionizer/generator"

# NNN

# cmd options
export NNN_OPTS="ceErx"
#
export NNN_OPS_PROG=0

# plugins
export NNN_PLUG="z:!zsh $nnn;"

# colors for files
export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'

# always cd on quit
export NNN_TMPFILE='/tmp/.lastd'

# archive
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
# vim:set et sw=4 ts=4 tw=80 ft=zsh:
