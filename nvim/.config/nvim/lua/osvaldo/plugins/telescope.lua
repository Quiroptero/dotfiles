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
    local builtin = require("telescope.builtin")
    local themes = require("telescope.themes")

    telescope.setup({
      pickers = { find_files = { hidden = true, no_ignore = true }}, -- find all files (e.g. dotfiles)
      defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--no-ignore',
          '--hidden'
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
    local keymap = vim.keymap

    keymap.set("n", "<leader>st", "<cmd>TodoTelescope<cr>", { desc = "[S]earch through all project [T]odos" })
    keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
    keymap.set("n", "<leader>sr", builtin.oldfiles, { desc = "[S]earch [R]ecent files" })
    keymap.set("n", "<leader>sl", builtin.live_grep, { desc = "[S]earch string in cwd and get [L]ive results" })
    keymap.set("n", "<leader>su", builtin.grep_string, { desc = "[S]earch string [U]nder cursor in cwd" })
    keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
    keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
    keymap.set("n", "<leader>sp", builtin.builtin, { desc = "[S]earch builtin [P]ickers" })
    keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
    keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch open [B]uffers" })
    keymap.set("n", "<leader>ss",
        function() builtin.lsp_document_symbols({
			symbols = { "Class", "Function", "Method", "Constructor", "Interface", "Module", "Property" },
		}) end,
        { desc = "[S]earch LSP [S]ymbols in document" }
    )
    keymap.set("n", "<leader>sc",
        function() builtin.current_buffer_fuzzy_find(themes.get_dropdown({ winblend = 10, previewer = false})) end,
        { desc = "[S]earch in [C]urrent buffer" }
    )
    keymap.set("n", "<leader>sn", -- Shortcut for searching in Neovim config files
        function() builtin.find_files({ cwd = vim.fn.stdpath("config") }) end,
        { desc = "[S]earch [N]eovim files" }
    )
  end,
}
