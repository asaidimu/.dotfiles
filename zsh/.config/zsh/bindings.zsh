bindkey -A viins main

# enter command mode
bindkey -M viins 'jk' vi-cmd-mode

# open project in tmux
bindkey '^u' kill-whole-line

# open a tmux session at the current directory
bindkey -s '^n' "^u start_session && clear ^M"

# Paste contents of xclip
bindkey -s '^v' '`xclip -o`^i'

# Key bindings for fzf

# CTRL-F - Paste the selected file path(s) into the command line
bindkey '^F' fzf-file-widget

# ALT-C - cd into the selected directory
bindkey '\ec' fzf-cd-widget

# CTRL-R - Paste the selected command from history into the command line
bindkey '^R' fzf-history-widget

