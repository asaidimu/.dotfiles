# config_dir
export ZSH_CONFIG="${HOME}/.config/zsh"

# -- exports --
source $ZSH_CONFIG/exports.zsh

# -- open tmux --
if [ -z "$TMUX" -a "$(whoami)" != "root" ]; then
    session_name=$(basename $HOME | sed -E "s/^(\.)+//; s/\./_/g" )

    _benoni=1
    # shell started
    while  [ "$_benoni" -eq 1 ]; do
      clear
      if [ -e "/tmp/kill_term" ]; then
        rm -rf "/tmp/kill_term"
        _benoni=2
      else
        if tmux has -t "$session_name" 2> /dev/null; then
          tmux attach-session -t "$session_name"
        else
          tmux new-session -s "$session_name" -c "$HOME"
        fi
      fi

    done
fi


# -- settings --
source $ZSH_CONFIG/settings.zsh

# -- aliases --
source $ZSH_CONFIG/aliases.zsh

# -- functions --
source $ZSH_CONFIG/functions.zsh

# -- bindings --
source $ZSH_CONFIG/bindings.zsh

# -- theme --
source $ZSH_CONFIG/theme.zsh
