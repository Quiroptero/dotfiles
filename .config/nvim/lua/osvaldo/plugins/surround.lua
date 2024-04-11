return {
	"kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	config = function()
		require("nvim-surround").setup({
			-- According to the documentation, the setup function is strictly additive,
            -- so it's safe to add new "surroundings" to the table.
            -- See: `:h nvim-surround.configuration`.
			surrounds = {
                -- https://github.com/kylechui/nvim-surround/discussions/53#discussioncomment-3134891
				["l"] = {
					add = function()
						local clipboard = vim.fn.getreg("+"):gsub("\n", "")
						return { { "[" }, { "](" .. clipboard .. ")" } }
					end,
					find = "%b[]%b()",
					delete = "^(%[)().-(%]%b())()$",
					change = {
						target = "^()()%b[]%((.-)()%)$",
						replacement = function()
							local clipboard = vim.fn.getreg("+"):gsub("\n", "")
							return { { "" }, { clipboard } }
						end,
					},
				},
                -- Spanish punctuation marks
                -- https://github.com/kylechui/nvim-surround/discussions/53#discussioncomment-9016771
				["s"] = { add = function() return { { "«" }, { "»" } } end },
				["e"] = { add = function() return { { "¡" }, { "!" } } end },
				["q"] = { add = function() return { { "¿" }, { "?" } } end },
			},
		})
	end,
}
