# aliases to be used in personal machines
export BLOG="$HOME/w/quiroptero.blog"
export BOOKS="$HOME/c/books"
export MONOCROMO_SRC_DIR="$HOME/w/monocromo.blog/source"
export MONOCROMO_DST_DIR="$HOME/w/monocromo.blog/public"

# exiftool
alias exifs="exiftool -T -filename -datetimeoriginal -focallength -fnumber -iso -shutterspeed"

# navigation
# reminder for myself: "e" stands for "edit"
alias blog="cd $BLOG/main"
alias bloge="blog && nvim ."
alias blogd="cd $BLOG/draft"
alias blogde="blogd && nvim ."
alias dot="cd $HOME/dotfiles"
alias dote="dot && nvim ."
alias rat="cd $HOME/nox/ratpenat"
alias rate="rat && nvim ."

# hugo
# see: https://gohugo.io/commands/hugo_server/ 
alias hugos="hugo server \
    --disableFastRender \
    --buildFuture \
    --navigateToChanged \
    --printMemoryUsage \
    --printPathWarnings \
    --printUnusedTemplates \
    --templateMetrics \
    --gc \
    --enableGitInfo \
    --disableBrowserError \
    --templateMetricsHints \
    --environment development \
    --buildDrafts"
