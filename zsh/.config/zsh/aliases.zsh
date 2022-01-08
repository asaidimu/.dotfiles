  unalias rm
  unalias ll
  unalias man


  alias r=source_file
  alias cp="cp -r"
  alias rm="rm -i"
  alias ls='lsd  --group-dirs=first --color=auto'
  alias ll='ls -lh'
  alias ag="ag  --color-match='1;32' --color-line-number='0;34'"
  alias td="tmux detach"

  alias ev="vim ~/.vim/init.vim"
  alias ez="vim ~/.zshrc"
  alias e3="vim ~/.i3/config"
  alias ep="vim ~/.config/polybar/config"

  alias sfs="OIFS=${IFS};IFS=$'\n'"
  alias ufs="IFS=${OIFS}"
  alias todo="ag TODO -A1"
  alias sed="sed -E"
  alias prm=". /usr/local/bin/prm.sh"

  alias pjn="pj new"
  alias add_semver="yarn add -D @semantic-release/commit-analyzer @semantic-release/git @semantic-release/release-notes-generator @semantic-release/changelog semantic-release"

  alias vim="lvim"


# vim:set et sw=4 ts=4 tw=80 ft=zsh:
