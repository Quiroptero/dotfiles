# meta-aliases
alias aliases="nvim ~/.zsh-custom/aliases.zsh"
alias saliases="source ~/.zsh-custom/aliases.zsh"

# exiftool
alias exifs="exiftool -T -filename -datetimeoriginal -focallength -fnumber -iso -shutterspeed"

# utils
alias pbcopy="xclip -selection clipboard"
alias setx="setxkbmap es"

# git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gs="git status -sb"

# navigation
# reminder for myself: "e" stands for "edit"
alias blog="cd ~/projects/blog/quiroptero.blog/main"
alias bloge="blog && nvim ."
alias dot="cd ~/dotfiles"
alias dote="dot && nvim ."
alias publ="cd ~/projects/escribir/publicable"
alias puble="publ && nvim ."
alias lore="cd ~/projects/website/source"
alias loree="lore && nvim ."
alias paper="cd ~/projects/blog/paperbat && nvim ."

# hugo
# see: https://gohugo.io/commands/hugo_server/ 
alias hugos="hugo server --renderToMemory --buildDrafts --disableFastRender --navigateToChanged --printMemoryUsage --printPathWarnings --printUnusedTemplates --templateMetrics --gc"

# eza: ls replacement
# simple ls
alias ls="eza --long --no-filesize --icons=always --no-time --no-user --no-permissions"
# ls extended: date and git information
alias lse="eza --long --git --icons=always --no-user --header --git-repos --no-filesize --no-permissions"
# ls full: sizes of files and dirs, permissions, tree up to 2 levels
alias lsf="eza --long --git --icons=always --no-user --header --git-repos -T -L 2 --total-size"
