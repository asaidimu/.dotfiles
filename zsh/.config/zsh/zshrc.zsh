# config_dir
export ZSH_CONFIG="${HOME}/.config/zsh"

# -- exports --
source $ZSH_CONFIG/exports.zsh

MAIN_TERMINAL=${MAIN_TERMINAL:-0}

# -- open tmux --
if [ -z "$TMUX" -a "$(whoami)" != "root" -a  "$MAIN_TERMINAL" -eq 0 ]; then
    session_name=$(basename $HOME | sed -E "s/^(\.)+//; s/\./_/g" )

    _in_loop=1

    [ "$MAIN_TERMINAL" -eq 0 ] && export MAIN_TERMINAL=1

    # shell started
    while  [ "$_in_loop" -eq 1 ]; do
      if [ -e /tmp/kill_term ]; then
        rm -f /tmp/kill_term
        _in_loop=0
      else
        clear
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

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# bun completions
[ -s "/home/augustine/.oh-my-zsh/completions/_bun" ] && source "/home/augustine/.oh-my-zsh/completions/_bun"

# custom functions
fpath=( "$ZSH_CONFIG/functions" "${fpath[@]}" )
autoload -Uz $fpath[1]/*(.:t)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# bun completions
[ -s "/home/augustine/.bun/_bun" ] && source "/home/augustine/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/augustine/google-cloud-sdk/path.zsh.inc' ]; then . '/home/augustine/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/augustine/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/augustine/google-cloud-sdk/completion.zsh.inc'; fi

# go
export GOPATH=$HOME/.local/lib/go
[ -e "$GOPATH" ] || mkdir -p "$GOPATH"
