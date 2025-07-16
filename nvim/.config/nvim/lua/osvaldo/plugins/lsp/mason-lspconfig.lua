-- lspconfig is neovim's builtin framework to interact with LSP servers
-- mason-lspconfig is a bridge to make mason work together with lspconfig
return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
