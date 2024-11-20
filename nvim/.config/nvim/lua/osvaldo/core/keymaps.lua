vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode. Equivalent to ESC" })

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
keymap.set("n", "<leader>ty", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tr", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- spell checking
keymap.set("n", "<leader>z0", "<cmd>setlocal nospell<CR>", { desc = "Disable spell checking in the current buffer" })
keymap.set("n", "<leader>z1", "<cmd>setlocal spell spelllang=es<CR>", { desc = "Enable spell checking for Spanish in the current buffer" })
keymap.set("n", "<leader>z2", "<cmd>setlocal spell spelllang=en<CR>", { desc = "Enable spell checking for English in the current buffer" })
