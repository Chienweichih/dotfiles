# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

alias e='explorer .' # for Windows only
alias ls="ls --color=auto"
alias ptt='ssh bbsu@ptt.cc'
alias rn='rg --files -0 | xargs -0 dos2unix'
alias t='ctags -R'
alias x='chmod -R 755 .'

bind "set completion-ignore-case on"

export PATH=~/usr/bin:$PATH
export FZF_DEFAULT_COMMAND='rg --files'
export LC_ALL=C.UTF-8

source ~/git-completion.bash
source ~/git-prompt.sh

PS1='\[\e]0;\w\a\]'          # set window title
PS1="$PS1"'\n'               # new line
PS1="$PS1"'\[\e[32m\]'       # change to green
PS1="$PS1"'\u@\h '           # user@host<space>
PS1="$PS1"'\[\e[33m\]'       # change to brownish yellow
PS1="$PS1"'\w'               # current working directory
PS1="$PS1"'\[\e[36m\]'       # change to cyan
PS1="$PS1""\$(__git_ps1 ' (%s)')"
PS1="$PS1"'\n'               # new line
PS1="$PS1"'\[\e[0m\]'        # change to white
PS1="$PS1"'\$ '              # # or $<space>
