return {
	"kylechui/nvim-surround",
	event = { "BufReadPre", "BufNewFile" },
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
		})
		-- https://github.com/kylechui/nvim-surround/discussions/53#discussioncomment-3134891
		require("nvim-surround").buffer_setup({
			surrounds = {
				["l"] = {
					add = function()
						local clipboard = vim.fn.getreg("+"):gsub("\n", "")
						return {
							{ "[" },
							{ "](" .. clipboard .. ")" },
						}
					end,
					find = "%b[]%b()",
					delete = "^(%[)().-(%]%b())()$",
					change = {
						target = "^()()%b[]%((.-)()%)$",
						replacement = function()
							local clipboard = vim.fn.getreg("+"):gsub("\n", "")
							return {
								{ "" },
								{ clipboard },
							}
						end,
					},
				},
				["s"] = {
					add = function()
						return {
							{ "«" },
							{ "»" },
						}
					end,
				},
				["e"] = {
					add = function()
						return {
							{ "¡" },
							{ "!" },
						}
					end,
				},
				["q"] = {
					add = function()
						return {
							{ "¿" },
							{ "?" },
						}
					end,
				},
			},
		})
	end,
}
