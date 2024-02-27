export PATH="$HOME/usr/bin:$HOME/.local/bin:$PATH"
export FZF_DEFAULT_COMMAND="rg --files"

if command -v explorer.exe > /dev/null; then
  alias open="explorer.exe"
fi
alias ptt="ssh bbsu@ptt.cc"
alias t="rg --files | ctags --verbose=yes --recurse --links=no -L - | rg OPENING"
