# aliases to be used in personal machines

# exiftool
alias exifs="exiftool -T -filename -datetimeoriginal -focallength -fnumber -iso -shutterspeed"

# navigation
# reminder for myself: "e" stands for "edit"
alias blog="cd ~/projects/blog/quiroptero.blog/main"
alias bloge="blog && nvim ."
alias blogd="cd ~/projects/blog/quiroptero.blog/draft"
alias blogde="blogd && nvim ."
alias dot="cd ~/dotfiles"
alias dote="dot && nvim ."
alias publ="cd ~/projects/escribir/publicable"
alias puble="publ && nvim ."
alias lore="cd ~/projects/website/omiranda.dev"
alias loree="lore && nvim ."
alias rat="cd ~/projects/blog/ratpenat"
alias rate="rat && nvim ."

# hugo
# see: https://gohugo.io/commands/hugo_server/ 
alias hugos="hugo server \
    --navigateToChanged \
    --printMemoryUsage \
    --printPathWarnings \
    --printUnusedTemplates \
    --templateMetrics \
    --gc \
    --enableGitInfo \
    --disableBrowserError \
    --templateMetricsHints \
    --environment development"
