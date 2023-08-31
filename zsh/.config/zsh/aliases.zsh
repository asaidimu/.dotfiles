  unalias rm
  unalias ll
  unalias man


  alias r=source_file
  alias cp="cp -r"
  alias rm="rm -i"
  which lsd > /dev/null && alias ls='lsd  --group-dirs=first --color=auto'
  alias ll='ls -lh'
  alias ag="ag  --color-match='1;32' --color-line-number='0;34'"
  alias td="tmux detach"

  alias ev="nvim ~/.config/nvim/lua/custom/init.lua"
  alias ez="nvim ~/.zshrc"
  alias e3="nvim ~/.config/i3"
  alias ep="nvim ~/.config/polybar"

  alias sfs="OIFS=${IFS};IFS=$'\n'"
  alias ufs="IFS=${OIFS}"
  alias todo="ag TODO -A1"

  alias add_semver="yarn add -D @semantic-release/commit-analyzer @semantic-release/git @semantic-release/release-notes-generator @semantic-release/changelog semantic-release"

  alias tmp='cd $(mktemp -d)'
  which nvim > /dev/null && alias vim="nvim"

  alias upwork="/opt/Upwork/upwork"

# vim:set et sw=4 ts=4 tw=80 ft=zsh:
