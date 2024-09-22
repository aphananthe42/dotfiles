# Paths

export LSCOLORS=Cxfxcxdxbxegedabagacad
export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=5000


# Alias

alias ls='ls -CFG'
alias la="ls -A"
alias ..='cd ..'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias gb="git branch"
alias gco='git checkout'
alias gcm='git checkout main'
alias gl='git pull'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gst='git status'

alias dc='docker compose'
alias dcenter='docker compose exec app bash'

alias q='exit'


# Scripts

function _update_ps1() {
    PS1="$(powerline-shell $?)\n$ "
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source "$HOME/.rye/env"
neofetch
