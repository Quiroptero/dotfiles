return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics (Trouble)" },
        { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer Diagnostics (Trouble)" },
        { "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "Quickfix List (Trouble)" },
        { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Location List (Trouble)" },
    },
}
