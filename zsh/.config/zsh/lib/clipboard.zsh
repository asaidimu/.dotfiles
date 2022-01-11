function detect-clipboard() {
  emulate -L zsh
  function clipcopy() { xclip -in -selection clipboard < "${1:-/dev/stdin}"; }
  function clippaste() { xclip -out -selection clipboard; }
}

# Detect at startup. A non-zero exit here indicates that the dummy clipboards were set,
# which is not really an error. If the user calls them, they will attempt to redetect
# (for example, perhaps the user has now installed xclip) and then either print an error
# or proceed successfully.
detect-clipboard || true
