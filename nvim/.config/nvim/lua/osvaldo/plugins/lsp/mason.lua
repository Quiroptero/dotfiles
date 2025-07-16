-- mason is a package manager for LSP servers
-- NOTE: requires Node!
return {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✔",
                package_pending = "➜",
                package_uninstalled = "✗",
            }
        }
    }
}
