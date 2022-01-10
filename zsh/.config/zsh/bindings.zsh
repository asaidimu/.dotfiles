
# open project in tmux
bindkey '^u' kill-whole-line

# open a project
bindkey -s '^p' "^u pjopen && clear ^M"

# open a tmux session at the current directory
bindkey -s '^n' "^u session_here && clear ^M"

bindkey -s '^v' '`xclip -o`^i'
# vim:set filetype=zsh:
