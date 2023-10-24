# Paths

export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
export PATH=/opt/homebrew/opt/python@3.12/libexec/bin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/dotfiles/scripts:$PATH
export BASH_SILENCE_DEPRECATION_WARNING=1

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
