# Paths

export PATH=$HOME/dotfiles/scripts:$PATH
export PATH=/usr/local/opt/node/bin:$PATH
export PATH=/usr/local/opt/python@3.12/libexec/bin:$PATH

# Commands

if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

function _update_ps1() {
    PS1="$(powerline-shell $?)\n$ "
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

neofetch
