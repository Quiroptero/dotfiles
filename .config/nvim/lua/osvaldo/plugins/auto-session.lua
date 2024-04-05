return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    local keymap = vim.keymap
    
    -- "w" as in "workspace"
    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore last workspace session for cwd" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save workspace session for cwd" })
  end,
}
