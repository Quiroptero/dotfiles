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

Dotfiles are kept inside directories named after the software they belong to.
OS-specific dotfiles are kept with the same structure in mind,
with an additional layer (directory) at the top, named after the OS they belong to.
