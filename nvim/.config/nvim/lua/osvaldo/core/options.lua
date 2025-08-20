vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("let g:python3_host_prog = '~/.pyenv/versions/nvim/bin/python3'")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4 -- 2 spaces for tabs
opt.shiftwidth = 4 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- visual settings
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.foldcolumn = "1" -- display folding marks in one column
opt.foldenable = true -- enable folding
opt.foldmethod = "expr" -- form a fold according to an expression
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- fold according to LSP directives
opt.foldlevel = 99 -- all folds open
opt.foldlevelstart = 99 -- all folds open when starting to edit a new buffer
opt.fillchars = {
    foldclose = "›",
    foldopen = "⌄",
    foldsep = "|",
}
opt.colorcolumn = "120"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
-- unnamedplus is actually annoying, but I haven't figured out yet a better approach
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- spell checking
-- HACK: For fresh environments you might need to download additional languages first.
--       To do that, momentarily disable the nvim-tree plugin, install the missing spellfiles,
--       restart neovim and enable nvim-tree.
--       See plugins/nvim-tree.lua for more details.
opt.encoding = "utf-8"
opt.spelllang = {"en", "es"}
opt.spell = false
