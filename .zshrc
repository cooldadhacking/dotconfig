username="f4ther"
export ZSH=/home/$username/.oh-my-zsh

ZSH_THEME="jbergantine"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
_PATH="~/.ssh/rsa_id"

alias vim="nvim"
export OPENAI_API_KEY="sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
