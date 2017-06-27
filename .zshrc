#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Alias
# 
alias cd..='cd ..'
alias ls='ls -l'
alias cl='clear'
alias vsc='open -a '\''Visual Studio Code'\'''
alias wrangler='open -a Textwrangler'
alias vim='/usr/local/Cellar/macvim/8.0-133/MacVim.app/Contents/MacOS/Vim'
alias isy='ssh -X hamer848@ixtab.edu.isy.liu.se'

# functions
# 
# virutalenv workon
function workon() { 
  source $1/bin/activate
}
