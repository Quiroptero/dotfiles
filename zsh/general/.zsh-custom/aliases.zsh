# meta-aliases
alias aliases="nvim ~/.zsh-custom/aliases.zsh"
alias saliases="source ~/.zsh-custom/aliases.zsh"

# git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gs="git status -sb"

# eza: ls replacement
# simple ls
alias ls="eza --long --no-filesize --icons=always --no-time --no-user --no-permissions"
# ls extended: date and git information
alias lse="eza --long --git --icons=always --no-user --header --git-repos --no-filesize --no-permissions"
# ls full: sizes of files and dirs, permissions, tree up to 2 levels
alias lsf="eza --long --git --icons=always --no-user --header --git-repos -T -L 2 --total-size"

# ipython
alias ip="ipython"
