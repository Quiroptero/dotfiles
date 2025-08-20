vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split [W]indow [V]ertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split [W]indow [H]orizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make [W]indow splits [E]qual size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current [W]indow split [X]" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>l", "<cmd>tabn<CR>", { desc = "Go to next tab. Equivalent to gt" })
keymap.set("n", "<leader>h", "<cmd>tabp<CR>", { desc = "Go to previous tab. Equivalent to gT" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- zpell checking
keymap.set("n", "<leader>z0", "<cmd>setlocal nospell<CR>", { desc = "Disable spell checking in the current buffer" })
keymap.set("n", "<leader>z1", "<cmd>setlocal spell spelllang=es<CR>", { desc = "Enable spell checking for Spanish in the current buffer" })
keymap.set("n", "<leader>z2", "<cmd>setlocal spell spelllang=en<CR>", { desc = "Enable spell checking for English in the current buffer" })

-- insert ticket ID
-- local ticket = require("osvaldo.core.utils.ticket_id")
-- keymap.set("n", "<leader>J", ticket.insert, { desc = "Insert [TICKET-ID] from branch name" })

-- LSP keymaps
local group = vim.api.nvim_create_augroup("LspMappings", { clear = true })
vim.api.nvim_create_autocmd("LspAttach", {
	group = group,
	callback = function(args)
		local opts = { buffer = args.buf, silent = true }
        
        -- See `:help vim.lsp.*` for documentation on any of the below functions

        opts.desc = "[g]o to [d]efinition"
        keymap.set("n", "gd", vim.lsp.buf.definition, opts)

        opts.desc = "[g]o to [D]eclaration"
        keymap.set("n", "gd", vim.lsp.buf.declaration, opts)
    end
})
