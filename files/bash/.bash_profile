# Paths

export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH=$HOME/dotfiles/scripts:$PATH
export BASH_SILENCE_DEPRECATION_WARNING=1


# Scripts

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
