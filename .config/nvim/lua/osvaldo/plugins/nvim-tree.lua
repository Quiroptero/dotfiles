return {
    "nvim-tree/nvim-tree.lua",

    -- HACK: SPELL CHECKING =====
    --       Uncomment the following line to enable downloading missing spellfiles.
    --       The netrw plugin is responsible of downloading spellfiles, which might
    --       malfunction in a fresh environment if these settings are applied.
    --       By temporarily disabling the nvim-tree plugin we allow spellfiles to be
    --       downloaded. After that, we can enable nvim-tree again.
    --       See: https://www.reddit.com/r/neovim/comments/19d0we4/comment/kj4b4fk/
    -- enabled = false,
    -- ==========================

    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        -- recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        nvimtree.setup({
            view = { width = 35, relativenumber = true },
            -- change folder arrow icons
            renderer = {
                indent_markers = { enable = true},
                icons = { glyphs = { folder = { arrow_closed = "", arrow_open = "" }}}
            },
            -- disable window_picker for explorer to work well with window splits
            actions = { open_file = { window_picker = { enable = false }}},
            filters = { custom = { ".DS_Store" }},
            git = { ignore = false }
        })
        -- set keymaps
        local keymap = vim.keymap

        keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
        keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
        keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
    end
}

