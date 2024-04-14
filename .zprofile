# Tools to install:
# - bat
# - eza
# - thefuck
# - tldr
# - zoxide

# Set shell options.
export CLICOLOR=1
export EDITOR=vim
export PATH=$PATH:/home/andrew/.local/bin
export SHELL="/usr/bin/zsh"
export VISUAL="$EDITOR"

# Load plugins.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

# Initialize prompt.
autoload -Uz promptinit && promptinit
prompt ${prompt_name:-pure}

# Only check the .zcompdump file for
# regeration once per day.
# https://gist.github.com/ctechols/ca1035271ad134841284?permalink_comment_id=4129664#gistcomment-4129664
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
	compinit
done
compinit -C

# Initialize tools.
alias bat="batcat" # Optional: Alias for Ubuntu.
alias ls="eza"
alias ll="eza -hl"
eval "$(thefuck --alias)"
eval "$(zoxide init --cmd cd zsh)"
