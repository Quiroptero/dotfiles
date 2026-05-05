--return {
--  "folke/tokyonight.nvim",
--  priority = 1000,
--  config = function()
--    local bg = "#011628"
--    local bg_dark = "#011423"
--    local bg_highlight = "#143652"
--    local bg_search = "#0A64AC"
--    local bg_visual = "#275378"
--    local fg = "#CBE0F0"
--    local fg_dark = "#B4D0E9"
--    local fg_gutter = "#627E97"
--    local border = "#547998"
--
--    require("tokyonight").setup({
--      style = "night",
--      on_colors = function(colors)
--        colors.bg = bg
--        colors.bg_dark = bg_dark
--        colors.bg_float = bg_dark
--        colors.bg_highlight = bg_highlight
--        colors.bg_popup = bg_dark
--        colors.bg_search = bg_search
--        colors.bg_sidebar = bg_dark
--        colors.bg_statusline = bg_dark
--        colors.bg_visual = bg_visual
--        colors.border = border
--        colors.fg = fg
--        colors.fg_dark = fg_dark
--        colors.fg_float = fg
--        colors.fg_gutter = fg_gutter
--        colors.fg_sidebar = fg_dark
--      end
--    })
--    vim.cmd("colorscheme tokyonight")
--  end
--}
--

-- return {
--   "ellisonleao/gruvbox.nvim",
--   priority = 1000,
--   config = function()
--     -- Default options:
--     require("gruvbox").setup({
--       terminal_colors = true, -- add neovim terminal colors
--       undercurl = true,
--       underline = true,
--       bold = true,
--       italic = {
--         strings = true,
--         emphasis = true,
--         comments = true,
--         operators = false,
--         folds = true,
--       },
--       strikethrough = true,
--       invert_selection = false,
--       invert_signs = false,
--       invert_tabline = false,
--       invert_intend_guides = false,
--       inverse = true, -- invert background for search, diffs, statuslines and errors
--       contrast = "", -- can be "hard", "soft" or empty string
--       palette_overrides = {},
--       overrides = {},
--       dim_inactive = false,
--       transparent_mode = false,
--     })
--     vim.cmd("colorscheme gruvbox")
--   end
-- }

-- return {
--     "rebelot/kanagawa.nvim",
--     priority = 1000,
--     config = function()
--         -- Default options
--         require('kanagawa').setup({
--             compile = false,             -- enable compiling the colorscheme
--             undercurl = true,            -- enable undercurls
--             commentStyle = { italic = true },
--             functionStyle = {},
--             keywordStyle = { italic = true},
--             statementStyle = { bold = true },
--             typeStyle = {},
--             transparent = false,         -- do not set background color
--             dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
--             terminalColors = true,       -- define vim.g.terminal_color_{0,17}
--             colors = {                   -- add/modify theme and palette colors
--                 palette = { dragonAsh = "#6A9589" },
--                 theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--             },
--             overrides = function(colors) -- add/modify highlights
--                 return {}
--             end,
--             theme = "dragon",              -- Load "wave" theme when 'background' option is not set
--             background = {               -- map the value of 'background' option to a theme
--                 dark = "dragon",           -- try "dragon" !
--                 light = "lotus"
--             },
--         })
--         vim.cmd("colorscheme kanagawa")
--     end
-- }

return {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            no_italic = true,
            term_colors = true,
            transparent_background = false,
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
            },
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
            integrations = {
                telescope = {
                    enabled = true,
                    style = "nvchad",
                },
                dropbar = {
                    enabled = true,
                    color_mode = true,
                },
            },
            custom_highlights = function(colors)
                return {
                    DeleteThatShit = { fg = colors.red, style = { "bold" } },
                }
            end,
        })
        vim.cmd("colorscheme catppuccin")

        -- apply custom highlights only on markdown files
        local words = require("osvaldo.config.banned_words")

        vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter", "TextChanged", "InsertLeave"}, {
            pattern = "*.md",
            callback = function()
                vim.fn.clearmatches()
                for _, w in ipairs(words) do
                    vim.fn.matchadd("DeleteThatShit", "\\c\\<" .. w .. "\\>")
                end
            end,
        })
    end
}
