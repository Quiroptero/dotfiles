# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="fino-time"

# Auto-update behavior: disabled, auto or reminder
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Command execution time stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Path to custom folder
ZSH_CUSTOM=$HOME/.zsh-custom
# The custom folder contains files that define aliases.
# For a full list of active aliases, run `alias`.

# Plugins
plugins=(git web-search copypath copybuffer dirhistory history jsontools)

source $ZSH/oh-my-zsh.sh
