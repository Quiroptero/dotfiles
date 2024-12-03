# dotfiles

I manage my dotfiles with the help of the [GNU Stow package](https://www.gnu.org/software/stow/).
[Bastian Venthur's](https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html)
and [Brandon Invergo's](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
articles were of much help when deciding this setup.
I previously used a
[different](https://news.ycombinator.com/item?id=11070797)
[solution](https://www.atlassian.com/git/tutorials/dotfiles).

Also, [dotfiles are meant to be forked](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## how are my dotfiles organized

Files are kept within a directory named after the tool they belong to.
Inside that directory the target directory structure is mimicked.
When specific tags are needed, an additional layer is put in place.

## usage

One-line example to remind myself on how to use this setup.
From within `~`:

`stow --no-folding -d ~/dotfiles -S nvim -t ~ -v3`

* `--no-folding`: Stow only the _leaves_, not the branches.
  This means that only files will be stowed
  —directories will be created if they do not exist, but won't be symlinked.
* `-d`: The stow directory where the package is located at.
* `-S`: The package to be stowed.
* `-t`: The target directory. This is usually `/home/user` in Linux and `/Users/user` in macOS.
* `-v3`: Verbosity level 3.
