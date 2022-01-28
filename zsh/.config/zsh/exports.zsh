# -- path --
  export PATH="/sbin:/usr/sbin:/usr/bin:/usr/share/bin:/usr/local/bin"
  export PATH="$PATH:/usr/lib/jvm/jdk-13.0.1/bin"
  export PATH="$PATH:/opt/dart-sass"
  export PATH="$PATH:/opt/xdman"
  export PATH="$PATH:/opt/mssql/bin"
  export PATH="$PATH:/opt/mssql-tools/bin"
  export PATH="$PATH:/opt/DataGrip-2020.3/bin"
  export PATH="$PATH:/opt/WebStorm-202.7660.23/bin"
  export PATH="$PATH:/opt/PhpStorm-202.7660.42/bin"
  export PATH="$PATH:/opt/pycharm-2020.2.4/bin"
  export PATH="$PATH:/opt/idea-IU-203.5981.155/bin"
  export PATH="$PATH:/opt/clion-2020.3/bin"
  export PATH="$PATH:/opt/brave.com/brave"
  export PATH="$PATH:/opt/appimages"
  export PATH="$PATH:/snap/bin"
  export PATH="$PATH:/usr/games"
  export PATH="$PATH:/usr/lib/dart/bin"
  export PATH="$HOME/.local/bin:$PATH"
  export PATH="$HOME/projects/scripts/bin:$PATH"

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
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

# sessionizer
export SESSIONIZER_TARGET_LIST=~/.dotfiles/personal/sessionizer/paths
export SESSIONIZER_LIST_GENERATOR=~/.dotfiles/personal/sessionizer/generator

# vim:set et sw=4 ts=4 tw=80 ft=zsh:
