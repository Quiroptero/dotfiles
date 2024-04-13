# meta-aliases
alias aliases="nvim ~/.zsh-custom/aliases.zsh"
alias saliases="source ~/.zsh-custom/aliases.zsh"

# exiftool
alias exifs="exiftool -T -filename -datetimeoriginal -focallength -fnumber -iso -shutterspeed"

# dotfiles
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias ds="dot status -sb"

# utils
alias pbcopy="xclip -selection clipboard"
alias setx="setxkbmap es"

# git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gs="git status -sb"

# navigation
# reminder for myself: "e" stands for "edit"
alias blog="cd ~/projects/blog/quiroptero-source/draft"
alias bloge="blog && nvim ."
alias publ="cd ~/projects/escribir/publicable"
alias puble="esc && nvim ."
alias lore="cd ~/projects/website/omiranda-source"
alias loree="web && nvim ."

# hugo
# see: https://gohugo.io/commands/hugo_server/ 
alias hugos="hugo server --renderToMemory --buildDrafts --disableFastRender --navigateToChanged --printMemoryUsage --printPathWarnings --printUnusedTemplates --templateMetrics --gc"
