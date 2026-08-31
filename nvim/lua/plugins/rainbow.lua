return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",

		config = function()
			local hooks = require("ibl.hooks")

			local indent_colors = {
				"RainbowPink",
				"RainbowPurple",
				"RainbowBlue",
				"RainbowCyan",
				"RainbowGreen",
				"RainbowYellow",
			}

			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowPink", {
					fg = "#e84b8a",
					nocombine = true,
				})

				vim.api.nvim_set_hl(0, "RainbowPurple", {
					fg = "#c678dd",
					nocombine = true,
				})

				vim.api.nvim_set_hl(0, "RainbowBlue", {
					fg = "#8ab4f8",
					nocombine = true,
				})

				vim.api.nvim_set_hl(0, "RainbowCyan", {
					fg = "#7dcfff",
					nocombine = true,
				})

				vim.api.nvim_set_hl(0, "RainbowGreen", {
					fg = "#a6d189",
					nocombine = true,
				})

				vim.api.nvim_set_hl(0, "RainbowYellow", {
					fg = "#e5c07b",
					nocombine = true,
				})

				vim.api.nvim_set_hl(0, "RainbowScope", {
					fg = "#c678dd",
					nocombine = true,
				})
			end)

			require("ibl").setup({
				indent = {
					char = "│",
					highlight = indent_colors,
				},

				scope = {
					enabled = true,
					show_start = false,
					show_end = false,
					highlight = "RainbowScope",
				},
			})
		end,
	},
}
