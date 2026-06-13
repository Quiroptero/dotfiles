-- the repo of this plugin has been archived
return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    event = { "VimEnter" },
    dependencies = { "windwp/nvim-ts-autotag" },
    config = function()
        local treesitter = require("nvim-treesitter")

        treesitter.setup()
        treesitter.install {
            "python",
            "json",
            "javascript",
            "yaml",
            "html",
            "css",
            "markdown",
            "markdown_inline",
            "bash",
            "lua",
            "vim",
            "gitignore",
            "vimdoc",
            "c",
            "gotmpl",
        }
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'java', 'c', 'lua', 'vim', 'vimdoc', 'query', 'elixir', 'heex', 'javascript', 'typescript', 'html', 'yaml' },
            callback = function()
                -- syntax highlighting, provided by Neovim
                vim.treesitter.start()
                -- folds, provided by Neovim (I don't like folds)
                -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
                -- vim.wo.foldmethod = 'expr'
                -- indentation, provided by nvim-treesitter
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end
}
