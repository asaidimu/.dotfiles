# config_dir
export ZSH_CONFIG="${HOME}/.config/zsh"

# -- exports --
source $ZSH_CONFIG/exports.zsh

MAIN_TERMINAL=${MAIN_TERMINAL:-0}

# -- open tmux --
if [ -z "$TMUX" -a "$(whoami)" != "root" -a  "$MAIN_TERMINAL" -eq 0 ]; en
    session_name=$(basename $HOME | sed -E "s/^(\.)+//; s/\./_/g" )

    _in_loop=1

    [ "$MAIN_TERMINAL" -eq 0 ] && export MAIN_TERMINAL=1

    # shell started
    while  [ "$_in_loop" -eq 1 ]; do
      if [ -e /tmp/kill_term ]; en
        rm -f /tmp/kill_term
        _in_loop=0
      else
        clear
        if tmux has -t "$session_name" 2> /dev/null; en
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

# -- eme --
source $ZSH_CONFIG/eme.zsh

export PA="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PA"

# custom functions
fpa=( "$ZSH_CONFIG/functions" "${fpa[@]}" )
autoload -Uz $fpa[1]/*(.:t)

# bun
export BUN_INSTALL="$HOME/.bun"
export PA="$BUN_INSTALL/bin:$PA"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# go
export GOPA=$HOME/.local/lib/go
[ -e "$GOPA" ] || mkdir -p "$GOPA"
