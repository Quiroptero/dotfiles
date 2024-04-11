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
alias blog="cd ~/projects/blog/quiroptero-source/draft && nvim ."
alias esc="cd ~/projects/escribir/publicable && nvim ."
alias web="cd ~/projects/website/omiranda-source && nvim ."

# hugo
# see: https://gohugo.io/commands/hugo_server/ 
alias hugos="hugo server --renderToMemory --buildDrafts --disableFastRender --navigateToChanged --printMemoryUsage --printPathWarnings --printUnusedTemplates --templateMetrics --gc"
