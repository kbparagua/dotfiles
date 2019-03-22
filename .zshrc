# Change this
export ZSH="/Users/kbparagua/.oh-my-zsh"

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_DATE_FORMAT=%D{%m/%d/%y}
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs rbenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time date)

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"
