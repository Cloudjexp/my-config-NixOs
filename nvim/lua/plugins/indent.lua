return {
	{
		"HiPhish/rainbow-delimiters.nvim",

		lazy = false,

		init = function()
			vim.g.rainbow_delimiters = {
				strategy = {
					[""] = "rainbow-delimiters.strategy.global",
				},

				query = {
					[""] = "rainbow-delimiters",
				},

				priority = {
					[""] = 110,
				},

				highlight = {
					"RainbowDelimiterRed",
					"RainbowDelimiterYellow",
					"RainbowDelimiterBlue",
					"RainbowDelimiterOrange",
					"RainbowDelimiterGreen",
					"RainbowDelimiterViolet",
					"RainbowDelimiterCyan",
				},
			}
		end,

		config = function()
			vim.api.nvim_set_hl(0, "RainbowDelimiterRed", {
				fg = "#e84b8a",
			})

			vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", {
				fg = "#e5c07b",
			})

			vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", {
				fg = "#8ab4f8",
			})

			vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", {
				fg = "#d19a66",
			})

			vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", {
				fg = "#a6d189",
			})

			vim.api.nvim_set_hl(0, "RainbowDelimiterViolet", {
				fg = "#c678dd",
			})

			vim.api.nvim_set_hl(0, "RainbowDelimiterCyan", {
				fg = "#7dcfff",
			})

			vim.api.nvim_create_autocmd("TextChangedI", {
				callback = function(args)
					local ok, parser = pcall(vim.treesitter.get_parser, args.buf, vim.bo[args.buf].filetype)

					if ok and parser then
						parser:parse()
						vim.cmd("redraw")
					end
				end,
			})
		end,
	},
}
