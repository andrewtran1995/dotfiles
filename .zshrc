# Tools to install:
# - zoxide

# Set shell options.
export CLICOLOR=1
export EDITOR=vim
export PATH=$PATH:/home/andrew/.local/bin
export VISUAL="$EDITOR"

# Load plugins.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# Initialize prompt.
autoload -Uz promptinit && promptinit
prompt ${prompt_name:-pure}

# Initialize tools.
eval $(thefuck --alias)
eval "$(zoxide init --cmd cd zsh)"
