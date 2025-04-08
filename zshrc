export PATH="$HOME/usr/bin:$HOME/.local/bin:$PATH"
export FZF_DEFAULT_COMMAND="rg --files"

if command -v explorer.exe > /dev/null; then
  alias open="explorer.exe"
  alias pbcopy="clip.exe"
elif command -v xclip > /dev/null; then
  alias pbcopy="xclip -selection clipboard"
fi
alias t="rg --files | ctags --verbose=yes --recurse --links=no -L - | rg OPENING"
alias coan_d="coan defs --recurse --filter c,h --keepgoing --locate . > defs"
alias coan_s="coan source --file argfile --recurse --filter c,h --keepgoing ."
