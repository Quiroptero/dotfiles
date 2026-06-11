# dotfiles

I use [chezmoi](https://www.chezmoi.io/) to manage my dotfiles.

Although
[dotfiles are meant to be forked](https://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/),
mine are heavily customised and thus are useful only for me.
Everyone is welcomed to take a look and learn a thing or two.

## instructions

> [!IMPORTANT]
> This section is a work in progress...

### install oh-my-zsh in a specific location

```sh
ZSH=~/.config/zsh/.oh-my-zsh sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended --keep-zshrc
```

Finally, apply the dotfiles:

```sh
chezmoi init --apply Quiroptero
```

## software my setup relies on

> [!NOTE]
> This is a list to remind myself of software I might want to install in fresh environments.
> It is not a comprehensive list and not all of these are represented in the dotfiles.
> In the future, I'd like to have this automatically installed with a bash script. Maybe.

* asciinema & agg
* atuin
* bat
* broot
* chezmoi
* commitmono font
* delta
* eza
* fzf & fzf-git & fd
* gnu stow
* homebrew
* hugo
* kitty
* neovim
* node (npm capabilities)
* oh my zsh
* presenterm
* pyenv & pyenv-virtualenv
* rclone
* ripgrep
* tellico
* twine
* visidata

## what I used before chezmoi

### stow

The [GNU Stow package](https://www.gnu.org/software/stow/)
is a great option when you don't need templating.

[Bastian Venthur's](https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html)
and [Brandon Invergo's](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)
articles were of much help when deciding this setup.

### bare git repository

A simple and elegant way to manage dotfiles is using a bare git repository.

* [Thread in HN](https://news.ycombinator.com/item?id=11070797)
* [Article explaining the setup](https://www.atlassian.com/git/tutorials/dotfiles)
