# Configuration files for Neovim

Quick reference of keybindings defined in the configuration files.

## surround.lua

Plugin: [nvim-surround.lua](https://github.com/kylechui/nvim-surround).

### Put a link in markdown

Copy the link.
In the markdown file, select the text of the link with `VISUAL` mode.
Press `Sl`.

### Spanish characters

| Char | Key |
|------|-----|
| «»   | s   |
| ¡!   | e   |
| ¿?   | q   |

* In `NORMAL` mode: `ys{motion}{char}`.
* In `VISUAL` mode: `S{char}`.
