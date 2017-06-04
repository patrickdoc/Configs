export PATH=$HOME/Library/Python/2.7/bin:$PATH
export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
set -o vi

export EDITOR=vim

# Aliases
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'

alias kol='cd ~/Applications; ./KoLMafiaUpdater.sh; cd -'

export TERM=xterm-256color

export CLICOLOR=1
export LSCOLORS=gxfxbxdxbxegedabagacad

PS1='\[\e[1;36m\]| \h |\[\e[0m\]\$ '
