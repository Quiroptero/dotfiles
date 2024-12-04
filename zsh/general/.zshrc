start_time=$(date +%s.%N)
echo "Loading $(basename -- "$0")..."
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

# Make the zcompdump file disappear from HOME
ZSH_COMPDUMP="$ZSH/cache/zcompdump"

# Plugins
plugins=(git web-search copypath copybuffer dirhistory history jsontools)

# pre-Initialization stuff (OS-specific)
echo "  Loading pre-start directives..."
source "$HOME/.zsh-os.zsh"
autoload -Uz compinit
compinit

# Initialization
echo "  Loading main configuration at $ZSH/oh-my-zsh.sh..."
source $ZSH/oh-my-zsh.sh

end_time=$(date +%s.%N)
runtime=$(echo "$end_time - $start_time" | bc)
echo "Finished loading $(basename "$0") in $runtime seconds."
