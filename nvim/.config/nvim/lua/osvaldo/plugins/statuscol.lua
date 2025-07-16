return {
    "luukvbaal/statuscol.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local builtin = require("statuscol.builtin")
        require("statuscol").setup({
            setopt = true,
            segments = {
                {
                    sign = {
                        namespace = { "gitsigns.*" },
                        name = { "gitsigns.*" },
                        colwidth = 1,
                    },
                },
                {
                    sign = {
                        namespace = {".*"},
                        name = { ".*" },
                        colwidth = 1,
                    },
                },
                {
                    text = { builtin.lnumfunc },
                    condition = { true },
                    click = "v:lua.ScLa",
                },
                { text = { "  " }, },
                {
                    text = { builtin.foldfunc },
                    click = "v:lua.ScFa",
                    wrap = true,
                    hl = "FoldColumn",
                    colwidth = 1,
                },
                { text = { " " }, },
            },
            clickmod = "c",         -- modifier used for certain actions in the builtin clickhandlers
                                    -- "a" for Alt, "c" for Ctrl and "m" for Meta
            clickhandlers = {       -- builtin click handlers, keys are pattern matched
                Lnum                   = builtin.lnum_click,
                FoldClose              = builtin.foldclose_click,
                FoldOpen               = builtin.foldopen_click,
                FoldOther              = builtin.foldother_click,
                DapBreakpointRejected  = builtin.toggle_breakpoint,
                DapBreakpoint          = builtin.toggle_breakpoint,
                DapBreakpointCondition = builtin.toggle_breakpoint,
                ["diagnostic/signs"]   = builtin.diagnostic_click,
                gitsigns               = builtin.gitsigns_click,
            },
        })
    end,
}
