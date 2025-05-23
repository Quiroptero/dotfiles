return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local b = require("telescope.builtin")
        local themes = require("telescope.themes")

        telescope.setup({
            defaults = {
                vimgrep_arguments = {
                    'rg',
                    '--color=never',
                    '--no-heading',
                    '--with-filename',
                    '--line-number',
                    '--column',
                    '--smart-case'
                },
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist, -- move the selected items to QFlist and opens the QFlist
                    },
                },
            },
        })

        telescope.load_extension("fzf")

        -- set keymaps
        local k = vim.keymap

        -- by default find_files and live_grep don't look into hidden files and .gitignored
        k.set("n", "<leader>sf", b.find_files, { desc = "[S]earch [F]iles" })
        k.set("n", "<leader>sl", b.live_grep, { desc = "[S]earch string in cwd and get [L]ive results" })
        -- option to look into hidden files and .gitignored
        k.set(
            "n", "<leader>s.",
            function() b.find_files({
                no_ignore = true, -- include .gitignored
                hidden = true, -- include hidden files 
            }) end, 
            { desc = "[S]earch hidden [.] files" }
        )
        k.set(
            "n", "<leader>s,",
            function() b.live_grep({ additional_args = function() return { "-uu" } end }) end,
            { desc = "[S]earch Live results in hidden [,] files" }
        )
        k.set("n", "<leader>st", "<cmd>TodoTelescope<cr>", { desc = "[S]earch through all project [T]odos" })
        k.set("n", "<leader>sr", b.oldfiles, { desc = "[S]earch [R]ecent files" })
        k.set("n", "<leader>su", b.grep_string, { desc = "[S]earch string [U]nder cursor in cwd" })
        k.set("n", "<leader>sh", b.help_tags, { desc = "[S]earch [H]elp" })
        k.set("n", "<leader>sk", b.keymaps, { desc = "[S]earch [K]eymaps" })
        k.set("n", "<leader>sp", b.builtin, { desc = "[S]earch builtin [P]ickers" })
        k.set("n", "<leader>sd", b.diagnostics, { desc = "[S]earch [D]iagnostics" })
        k.set("n", "<leader>sb", b.buffers, { desc = "[S]earch open [B]uffers" })
        k.set("n", "<leader>ss",
            function() b.lsp_document_symbols({
			    symbols = { "Class", "Function", "Method", "Constructor", "Interface", "Module", "Property" },
		    }) end,
            { desc = "[S]earch LSP [S]ymbols in document" }
        )
        k.set("n", "<leader>sc",
            function() b.current_buffer_fuzzy_find(themes.get_dropdown({ winblend = 10, previewer = false})) end,
            { desc = "[S]earch in [C]urrent buffer" }
        )
        k.set("n", "<leader>sn", -- Shortcut for searching Neovim config files
            function() b.find_files({
                cwd = vim.fn.stdpath("config"),
                no_ignore = true, -- include .gitignored
                hidden = true, -- include hidden files
            }) end,
            { desc = "[S]earch [N]eovim config files" }
        )
        k.set(
            "n", "<leader>sm",
            function() b.live_grep({
                search_dirs = vim.fn.stdpath("config"),
                additional_args = function() return { "-uu" } end,
            }) end,
            { desc = "[S]earch Live results in Neovi[M] config files" }
        )
    end,
}
