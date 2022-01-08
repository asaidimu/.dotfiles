# -- open tmux --
if [ -z "$TMUX" ]; then
    session_name=$(basename $HOME | sed -E "s/^(\.)+//; s/\./_/g" )
    if tmux has -t "$session_name" 2> /dev/null; then
        tmux attach-session -t "$session_name"
    else
        tmux new-session -s "$session_name" -c "$HOME"
    fi

    exit
fi

# config_dir
export ZSH_CONFIG="${HOME}/.config/zsh"

# -- settings --
source $ZSH_CONFIG/settings.zsh

# -- exports --
source $ZSH_CONFIG/exports.zsh

# -- aliases --
source $ZSH_CONFIG/aliases.zsh

# -- functions --
source $ZSH_CONFIG/functions.zsh

# -- plugins --
source $ZSH_CONFIG/plugins.zsh

# -- bindings --
source $ZSH_CONFIG/bindings.zsh

# -- theme --
source $ZSH_CONFIG/theme.zsh
